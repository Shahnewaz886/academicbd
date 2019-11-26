<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Mail\Contact_success;
use App\Mail\Feedback_success;
use Illuminate\Support\Facades\Mail;
use App\Models\Feedback;
use App\Models\Contents;
use Auth;
use App\Models\Classroom;

class HomeController extends Controller
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
        $institution_type = DB::table('institution_type')->get();
        return view('home',(['institution_type'=>$institution_type]));
    }


    public function uploads_content()
    {
        $content_section = DB::table('content_section')->pluck('title','id');
        $material_type = DB::table('material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
        $content_type = DB::table('content_type')->orderBy('id', 'DESC')->pluck('title', 'id');
        return view('uploads_content',(['content_section'=>$content_section,'content_type'=>$content_type,'material_type'=>$material_type]));
    }

    public function content_submit(Request $request)
    {
        $allData=$request->all();
        $allData['user_id'] = Auth::id();

        if ($request->file('content_file')){
            $file=$request->file('content_file');
            $fileName = md5(uniqid(rand(), true)).'.'.strtolower(pathinfo($file->getClientOriginalName(),PATHINFO_EXTENSION)) ;
            $destinationPath = 'files/';
            $file->move($destinationPath,$fileName);
            $allData['file_location'] = '/'.$destinationPath.$fileName;
        }

        Contents::create($allData);
        return redirect('contents-upload-successfully.html');
    }



    public function myaccount()
    {

        if(Auth::user()->user_type=='Teacher'){
            $classes = Classroom::where('teacher_id',Auth::id())->get();
            return view('teacher_account',['classes'=>$classes]);
        }else{
            return view('myaccount');
        }
    }



    public function pages(Request $request,$slug)
    {
        if($slug=='blog'){
            $blog = DB::table('blogs')->get();
            return view('pages/'.$slug,(['blog'=>$blog]));
        }
        if($slug=='courses'){
            return view('pages/'.$slug);
        }
        $page = DB::table('pages')->where('slug',$slug)->first();
        return view('pages/'.$page->template,(['page'=>$page]));
    }



    public function content_detail(Request $request,$id)
    {
        $content = DB::table('contents')->where('id',$id)->first();
        return view('content_detail',(['content'=>$content]));
    }

    public function successful_register()
    {
        return view('successful_register');
    }






    public function feedback_send(Request $request)
    {
        $allData=$request->all();

        $admin_mail = DB::table('global_setting')->where('id',1)->value('email');
        $company_name = DB::table('global_setting')->where('id',1)->value('company_name');

        Feedback::create($allData);

        Mail::to($request->email)->send(new Feedback_success($allData,$admin_mail,$company_name));
        echo 'success';
    }




}
