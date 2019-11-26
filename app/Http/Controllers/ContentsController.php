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

class ContentsController extends Controller
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

                   /*School & College, Madrasha, English Medium, English Version, Qaumi cintents*/
    public function contents(Request $request,$id)
    {

        $classes = DB::table('classes')
            ->join('institution_type_has_class','institution_type_has_class.class_id','classes.id')
            ->where('institution_type_has_class.institution_type_id',$id)
            ->get();

        $institution_type = DB::table('institution_type')->where('id',$id)->first();

        return view('contents',(['classes'=>$classes,'institution_type'=>$institution_type]));
    }

    public function admission_contents(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',$id)->first();
        $institution_categories = DB::table('institution_category')->pluck('title','id');
        return view('admission_contents',(['institution_type'=>$institution_type,'institution_categories'=>$institution_categories]));
    }

    public function graduate_contents(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',$id)->first();
        $departments = DB::table('department')->pluck('title','id');

        return view('graduate_contents',(['institution_type'=>$institution_type,'departments'=>$departments]));
    }
                      /*Skill development*/
    public function skill_development(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',$id)->first();
        $skill_development_category = DB::table('skill_development_category')->where('parent_id',0)->get();
        foreach($skill_development_category as $row){
            $row->child_cat  = DB::table('skill_development_category')->where('parent_id',$row->id)->get();
        }

        $material_type = DB::table('material_type')->get();

        return view('contents/skill_development',(['institution_type'=>$institution_type,'skill_development_category'=>$skill_development_category]));
    }

                    /*Skill development contents by category*/
    public function skill_development_category(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',10)->first();
        $skill_development_category = DB::table('skill_development_category')->where('parent_id',0)->get();
        foreach($skill_development_category as $row){
            $row->child_cat  = DB::table('skill_development_category')->where('parent_id',$row->id)->get();
        }

        $contents = DB::table('contents')->where(['skill_development_category_id'=> $id,'content_section_id'=>10])->get();

        return view('contents/skill_development_category',(['institution_type'=>$institution_type,'skill_development_category'=>$skill_development_category,'contents'=>$contents]));
    }

    public function higher_study(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',$id)->first();
        $standarized_tests = DB::table('standarized_tests')->get();

        return view('contents/higher_study',(['institution_type'=>$institution_type,'standarized_tests'=>$standarized_tests]));
    }
                             /*Job Preparation Contents*/

    public function job_preparation(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',$id)->first();
        $special_exam_id = DB::table('settings')->where('key', 'spaecial_job_exam_id')->value('value');
        $special_exam_name = DB::table('job_exam')->where('id', $special_exam_id)->value('title');
        $job_exam = DB::table('job_exam')->where('id', '!=' , $special_exam_id)->get();

        return view('contents/job_preparation',(['institution_type'=>$institution_type,'job_exam'=>$job_exam,'special_exam_id'=>$special_exam_id,'special_exam_name'=>$special_exam_name]));
    }

                              /*Job Preparation by Special Exam Contents*/

    public function job_preparation_subject(Request $request,$id)
    {
        $institution_type = DB::table('institution_type')->where('id',12)->first();
        $special_exam_id = DB::table('settings')->where('key', 'spaecial_job_exam_id')->value('value');
        $special_exam_name = DB::table('job_exam')->where('id', $special_exam_id)->value('title');
        $subjects = DB::table('job_exam_subject')
            ->join('job_exam_has_subject','job_exam_has_subject.job_exam_subject_id','job_exam_subject.id')
            ->where('job_exam_id',$id)
            ->get();

        return view('contents/job_preparation_subject',(['institution_type'=>$institution_type,'subjects'=>$subjects,'special_exam_id'=>$special_exam_id,'special_exam_name'=>$special_exam_name]));
    }



    public function content_detail(Request $request,$id)
    {
        $content = DB::table('contents')->where('id',$id)->first();
        return view('content_detail',(['content'=>$content]));
    }


}
