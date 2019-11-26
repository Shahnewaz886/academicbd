<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Mail\Contact_success;
use App\Mail\Feedback_success;
use Illuminate\Support\Facades\Mail;
use App\Models\Feedback;
use App\Mail\TestMail;

class SiteController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

                   /*job circular*/
    public function job_circular()
    {
        $institution_type = DB::table('institution_type')->where('id',12)->first();
        $special_exam_id = DB::table('settings')->where('key', 'spaecial_job_exam_id')->value('value');
        $special_exam_name = DB::table('job_exam')->where('id', $special_exam_id)->value('title');
        $job_circular = DB::table('job_circular')->where('status', 'Active')->get();

        return view('site/job_circular',(['special_exam_id'=>$special_exam_id,'special_exam_name'=>$special_exam_name,'institution_type'=>$institution_type,'job_circular'=>$job_circular]));
    }

                /*Find university (Higher Education)*/

    public function find_univesity()
    {
        $institution_type = DB::table('institution_type')->where('id',11)->first();
        $countries = DB::table('locations')->where('parent_id',0)->pluck('title','id');
        return view('site/find_univesity',(['institution_type'=>$institution_type,'countries'=>$countries]));
    }

             /*Scholarships (Higher Education)*/

    public function scholarships()
    {
        $institution_type = DB::table('institution_type')->where('id',11)->first();
        $scholarships = DB::table('blogs')->where('type', 'Scholarship')->get();
        return view('site/scholarships',(['institution_type'=>$institution_type,'scholarships'=>$scholarships]));
    }

        /*Scholarships (Higher Education)*/

    public function useful_hogher_education()
    {
        $institution_type = DB::table('institution_type')->where('id',11)->first();
        $countries = DB::table('locations')->where('parent_id', 0)->get();
        $country_id = $countries[0]->id;
        $country_name = $countries[0]->title;
        $useful_higher_education = DB::table('useful_higher_education')->where('country_id', $country_id)->get();

        return view('site/useful_hogher_education',(['institution_type'=>$institution_type,'countries'=>$countries,'useful_higher_education'=>$useful_higher_education,'country_name'=>$country_name]));
    }


                   /*Higher Education Links (Higher Education)*/

    public function useful_hogher_education_country(Request $request, $country_id)
    {
        $institution_type = DB::table('institution_type')->where('id',11)->first();
        $countries = DB::table('locations')->where('parent_id', 0)->get();
        $country_name = DB::table('locations')->where('id',$country_id)->value('title');
        $useful_higher_education = DB::table('useful_higher_education')->where('country_id', $country_id)->get();

        return view('site/useful_hogher_education',(['institution_type'=>$institution_type,'countries'=>$countries,'useful_higher_education'=>$useful_higher_education,'country_name'=>$country_name]));
    }


    /*Blog and Scholarship Detail*/

    public function blog(Request $request, $id)
    {
        $blog = DB::table('blogs')->where('id',$id)->first();
        return view('site/blog_detail',(['blog'=>$blog]));
    }












}
