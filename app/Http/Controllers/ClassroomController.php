<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Mail\Contact_success;
use App\Mail\Feedback_success;
use Illuminate\Support\Facades\Mail;
use App\Models\Feedback;
use App\Models\Classroom;
use Auth;

class ClassroomController extends Controller
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
    public function classroom()
    {
        $upcomming_class = Classroom::get();
        return view('class_room/classroom',['upcomming_class'=>$upcomming_class]);
    }

    public function class_detail($id)
    {
        $singleclass = Classroom::where('id',$id)->first();
        return view('class_room/class_detail',['singleclass'=>$singleclass]);
    }



    public function create_class()
    {
        $institution_type = DB::table('institution_type')->get();
        return view('class_room/create_class',(['institution_type'=>$institution_type]));
    }



    public function store_class(Request $request)
    {
        $class_room = new Classroom;
        $class_room->name = $request->name;
        $class_room->class_date = date('Y-m-d H:i:s',strtotime($request->class_date));
        $class_room->embed_code = $request->embed_code;
        $class_room->is_all_open = $request->is_all_open;
        $class_room->description = $request->description;
        $class_room->teacher_id = Auth::id();
        if ($request->file('image')){
            $file=$request->file('image');
            $fileName = md5(uniqid(rand(), true)).'.'.strtolower(pathinfo($file->getClientOriginalName(),PATHINFO_EXTENSION)) ;
            $destinationPath = 'files/';
            $file->move($destinationPath,$fileName);
            $class_room->image = '/'.$destinationPath.$fileName;
        }
        $class_room->save();
        return redirect('classroom');
    }


    public function edit_class($id)
    {
        $single_class =  Classroom::find($id);
        return view('class_room/edit_class',(['single_class'=>$single_class]));
    }

    public function update_class(Request $request)
    {
        $class_room =  Classroom::find($request->id);
        $class_room->name = $request->name;
        $class_room->class_date = date('Y-m-d H:i:s',strtotime($request->class_date));
        $class_room->embed_code = $request->embed_code;
        $class_room->is_all_open = $request->is_all_open;
        $class_room->description = $request->description;
        if ($request->file('image')){
            $file=$request->file('image');
            $fileName = md5(uniqid(rand(), true)).'.'.strtolower(pathinfo($file->getClientOriginalName(),PATHINFO_EXTENSION)) ;
            $destinationPath = 'files/';
            $file->move($destinationPath,$fileName);
            $class_room->image = '/'.$destinationPath.$fileName;
        }
        $class_room->save();
        return redirect('classroom');
    }

    public function teacher_profile($id)
    {
        $teacher_info = User::find($id);
        $classes = Classroom::where('teacher_id',$id)->get();
        return view('class_room/teacher_profile',['teacher_info'=>$teacher_info,'classes'=>$classes]);
    }

    public function edit_profile()
    {
        return view('class_room/edit_profile');
    }

    public function update_profile(Request $request)
    {
        $user =  User::find(Auth::id());
        $user->name = $request->name;
        $user->about = $request->about;
        if ($request->file('image')){
            $file=$request->file('image');
            $fileName = md5(uniqid(rand(), true)).'.'.strtolower(pathinfo($file->getClientOriginalName(),PATHINFO_EXTENSION)) ;
            $destinationPath = 'files/';
            $file->move($destinationPath,$fileName);
            $user->image = '/'.$destinationPath.$fileName;
        }
        $user->save();
        return redirect('myaccount');
    }








}
