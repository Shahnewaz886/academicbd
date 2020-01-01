<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;
use App\Models\Bazars;
use App\Models\Utilities;

class AjaxUploadController extends Controller
{
    //

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       // $this->middleware('auth');
    }




                 /*after content section change add section wise form*/

    public function content_section(Request $request)
    {
        $content_section_id = $request->content_section_id;

        if($content_section_id==1 || $content_section_id==2 || $content_section_id==3 || $content_section_id==4 || $content_section_id==5 || $content_section_id==6){

            $classes = DB::table('classes')
                ->join('institution_type_has_class','institution_type_has_class.class_id','classes.id')
                ->where('institution_type_has_class.institution_type_id',1)
                ->pluck('title', 'id');

            $institutions = DB::table('institution')
                ->join('institution_has_type','institution_has_type.institution_id','institution.id')
                ->where('institution_type_id',$content_section_id)->pluck('name', 'id');

            $material_type = DB::table('material_type')->orderBy('id', 'DESC')->pluck('title', 'id');

            echo view('ajax.uploads.school_college',(['classes'=>$classes,'institutions'=>$institutions,'material_type'=>$material_type]));

        }elseif($content_section_id==7){

            $institutions_category = DB::table('institution_category')->orderBy('id', 'DESC')->pluck('title', 'id');
            $material_type = DB::table('material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
            echo view('ajax.uploads.admission_test',(['institutions_category'=>$institutions_category,'material_type'=>$material_type]));

        }elseif($content_section_id==8 || $content_section_id==9){
                               /*graduate and undergraduate */
            $classes = DB::table('classes')
                ->join('institution_type_has_class','institution_type_has_class.class_id','classes.id')
                ->where('institution_type_has_class.institution_type_id',$content_section_id)
                ->orderBy('id', 'DESC')
                ->pluck('title', 'id');

            $institutions_category = DB::table('institution_category')->orderBy('id', 'DESC')->pluck('title', 'id');
            $department = DB::table('department')->orderBy('id', 'DESC')->pluck('title', 'id');

            $material_type = DB::table('material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
            echo view('ajax.uploads.graduate',(['classes'=>$classes,'institutions_category'=>$institutions_category,'department'=>$department,'material_type'=>$material_type]));

        }elseif($content_section_id==10){
                                 /*skill development*/
            $skill_development_category = DB::table('skill_development_category')->where('parent_id',0)->get();
            foreach($skill_development_category as $row){
                $row->child = DB::table('skill_development_category')->where('parent_id',$row->id)->get();
            }
            $material_type = DB::table('material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
            echo view('ajax.uploads.skill_development',(['skill_development_category'=>$skill_development_category,'material_type'=>$material_type]));

        }elseif($content_section_id==11){
                                 /*higher study*/
            $standarized_tests = DB::table('standarized_tests')->orderBy('id', 'DESC')->pluck('title', 'id');
            $material_type = DB::table('higher_job_material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
            echo view('ajax.uploads.higher_study',(['standarized_tests'=>$standarized_tests,'material_type'=>$material_type]));

        }elseif($content_section_id==12){
                                      /*job exam*/
            $job_exam = DB::table('job_exam')->orderBy('id', 'DESC')->pluck('title', 'id');
            $material_type = DB::table('higher_job_material_type')->orderBy('id', 'DESC')->pluck('title', 'id');
            echo view('ajax.uploads.job_preparation',(['job_exam'=>$job_exam,'material_type'=>$material_type]));

            }
    }

                   /*after change class of school & college section and add subject*/

    public function class_subject(Request $request)
    {
        $class_id = $request->class_id;
        $institution_type_id = $request->institution_type_id;

        $subjects = DB::table('subject')
            ->join('subject_has_class','subject_has_class.subject_id','subject.id')
            ->join('subject_has_type','subject_has_type.subject_id','subject.id')
            ->where('type_id',$institution_type_id)
            ->where('class_id',$class_id)
            ->pluck('title','id');

        echo view('ajax.uploads.subject',(['subject'=>$subjects]));
    }


                /*after change content type and add file or youtube or text*/

    public function content_type_content(Request $request)
    {
        $content_type_id = $request->content_type_id;
        echo view('ajax.content_type_content',(['content_type_id'=>$content_type_id]));
    }

                       /*after chnage institution category of admition test and add institution and subject*/

    public function institute_category_institute_subject(Request $request)
    {
        $institution_category_id = $request->institution_category_id;
        $institution_type_id = $request->institution_type_id;
        $institutions = DB::table('institution')
            ->join('institution_has_type','institution_has_type.institution_id','institution.id')
            ->where('institution_has_type.institution_type_id',$institution_type_id)
            ->where('institution_category_id',$institution_category_id)->pluck('name','id');

        $subjects = DB::table('subject')
            ->join('subject_has_type','subject_has_type.subject_id','subject.id')
            ->where('subject_has_type.type_id',$institution_type_id)
            ->where('institution_category_id',$institution_category_id)->pluck('title','id');

        echo view('ajax.uploads.institute_category_institute_subject',(['institutions'=>$institutions,'subjects'=>$subjects]));
    }

    /*after change job exam and add subjet*/

    public function job_exam_subject(Request $request)
    {
        $job_exam_id = $request->job_exam_id;

        $job_exam_subject = DB::table('job_exam_subject')
            ->join('job_exam_has_subject','job_exam_has_subject.job_exam_subject_id','job_exam_subject.id')
            ->where('job_exam_id',$job_exam_id)
            ->pluck('title','id');

        echo view('ajax.uploads.job_exam_subject',(['job_exam_subject'=>$job_exam_subject]));
    }


































































}
