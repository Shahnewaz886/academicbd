<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Webaccount;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;
use App\Models\Bazars;
use App\Models\Utilities;

class AjaxController extends Controller
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










    public function search_institution(Request $request)
    {
        $content_section_id =  $_GET['content_section_id'];
        $text =  $_GET['term'];
        $text = $text['term'];

        $data = DB::table('institution')
            ->select('institution.*')
            ->join('institution_has_type','institution_has_type.institution_id','institution.id')
            ->where('institution.name', 'like', $text.'%')
            ->where('institution_type_id',$content_section_id)->get();
        //$data = DB::table('institution')->where('institution_type_id',$content_section_id)->where('name', 'like', $text.'%')->get();
           echo json_encode( $data);
    }

    public function search_department(Request $request)
    {
        $text =  $_GET['term'];
        $text = $text['term'];
        $data = DB::table('department')->where('title', 'like', $text.'%')->get();
        echo json_encode( $data);
    }




    public function institution_info(Request $request)
    {
        $institution_id =  $request->institution_id;
        $institution_type_id = $request->institution_type_id;

        $institution_info = DB::table('institution')->where('id', $institution_id)->first();

        $image =  ($institution_info->image)?env('APP_URL_FILE').$institution_info->image:"http://placehold.it/200x200";
        $admission_inst = '';
        $admission_inst .='<img width="200" src="'.$image.'" alt="Institution Logo">';
        $admission_inst .='<h3>'.$institution_info->name.'</h3>';

        $classes = DB::table('classes')
            ->join('institution_has_class','institution_has_class.class_id','classes.id')
            ->join('institution_type_has_class','institution_type_has_class.class_id','classes.id')
            ->where('institution_type_has_class.institution_type_id',$institution_type_id)
            ->where('institution_id',$institution_id)
            ->get();

        $class_list = '';

        $class_list .='<div class="sk-table table-responsive">';
        $class_list .='<table class="table table-bordered text-center">';
        $class_list .='<tbody>';
        for ($i = 0; $i < ceil($classes->count()/5); $i++) {
            $class_list .= '<tr>';
            foreach ($classes as $k => $rows) {
                if ($i * 5 <= $k && $k < $i * 5 + 5) {
                    $class_list .= '<td class="class_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                }
            }
            $class_list .= '</tr>';
        }

        $class_list .='</tbody>';
        $class_list .='</table>';
        $class_list .='</div>';

        $data = array('institution_info'=>$admission_inst,'classes'=>$class_list);

        echo json_encode($data);

    }

    public function institution_classes(Request $request)
    {
        $institution_id =  $request->institution_id;

        $classes = DB::table('classes')
            ->join('institution_has_class','institution_has_class.class_id','classes.id')
            ->where('institution_id',$institution_id)->get();

        $class_list = '';

        $class_list .='<div class="sk-table table-responsive">';
        $class_list .='<table class="table table-bordered text-center">';
        $class_list .='<tbody>';
        for ($i = 0; $i < ceil($classes->count()/5); $i++) {
            $class_list .= '<tr>';
            foreach ($classes as $k => $rows) {
                if ($i * 5 <= $k && $k < $i * 5 + 5) {
                    $class_list .= '<td class="class_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                }
            }
            $class_list .= '</tr>';
        }

        $class_list .='</tbody>';
        $class_list .='</table>';
        $class_list .='</div>';

        $data = array('classes'=>$class_list);

        echo json_encode($data);
    }


    public function class_subject(Request $request)
    {
        $class_id =  $request->class_id;
        $institution_type_id =  $request->institution_type_id;
        $department_id =  $request->department_id;


        $subjects = DB::table('subject')
            ->join('subject_has_type','subject_has_type.subject_id','subject.id')
            ->join('subject_has_class','subject_has_class.subject_id','subject.id')
            ->where('type_id',$institution_type_id)
            ->where('class_id',$class_id)
            ->where('department_id',$department_id)
            ->get();

        $subject_list = '';

        $subject_list .='<div class="sk-table table-responsive">';
        $subject_list .='<table class="table table-bordered text-center">';
        $subject_list .='<tbody>';
        for ($i = 0; $i < ceil($subjects->count()/5); $i++) {
            $subject_list .= '<tr>';
            foreach ($subjects as $k => $rows) {
                if ($i * 5 <= $k && $k < $i * 5 + 5) {
                    $subject_list .= '<td class="subject_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                }
            }
            $subject_list .= '</tr>';
        }

        $subject_list .='</tbody>';
        $subject_list .='</table>';
        $subject_list .='</div>';

        $data = array('subjects'=>$subject_list);

        echo json_encode($data);
    }

                 /*job exams to subjects*/

    public function job_exam_subjects(Request $request)
    {
        $job_exam_id =  $request->job_exam_id;


        $subjects = DB::table('job_exam_subject')
            ->join('job_exam_has_subject','job_exam_has_subject.job_exam_subject_id','job_exam_subject.id')
            ->where('job_exam_id',$job_exam_id)
            ->get();

        $subject_list = '';

        $subject_list .='<div class="sk-table table-responsive">';
        $subject_list .='<table class="table table-bordered text-center">';
        $subject_list .='<tbody>';
        for ($i = 0; $i < ceil($subjects->count()/5); $i++) {
            $subject_list .= '<tr>';
            foreach ($subjects as $k => $rows) {
                if ($i * 5 <= $k && $k < $i * 5 + 5) {
                    $subject_list .= '<td class="subject_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                }
            }
            $subject_list .= '</tr>';
        }

        $subject_list .='</tbody>';
        $subject_list .='</table>';
        $subject_list .='</div>';

        $data = array('subjects'=>$subject_list);

        echo json_encode($data);
    }







                     /*institution catgory to subject*/

    public function category_subjects(Request $request)
    {
        $category_id =  $request->category_id;
        $institution_type_id =  $request->institution_type_id;


        $subjets = DB::table('subject')
            ->join('subject_has_type','subject_has_type.subject_id','subject.id')
            ->where('subject_has_type.type_id',$institution_type_id)
            ->where('institution_category_id',$category_id)->get();



        $subject_list = '';

        $subject_list .='<div class="sk-table table-responsive">';
        $subject_list .='<table class="table table-bordered text-center">';
        $subject_list .='<tbody>';
        for ($i = 0; $i < ceil($subjets->count()/5); $i++) {
            $subject_list .= '<tr>';
            foreach ($subjets as $k => $rows) {
                if ($i * 5 <= $k && $k < $i * 5 + 5) {
                    $subject_list .= '<td class="subject_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                }
            }
            $subject_list .= '</tr>';
        }

        $subject_list .='</tbody>';
        $subject_list .='</table>';
        $subject_list .='</div>';

        $data = array('subjects'=>$subject_list);

        echo json_encode($data);
    }



                           /*Admission test institution info and subjects*/

    public function admission_institution_info(Request $request)
    {
        $institution_id =  $request->institution_id;
        $institution_info = DB::table('institution')->where('id', $institution_id)->first();

        $image =  ($institution_info->image)?env('APP_URL_FILE').$institution_info->image:"http://placehold.it/200x200";
        $admission_inst = '';
        $admission_inst .='<img width="200" src="'.$image.'" alt="Institution Logo">';
        $admission_inst .='<h3>'.$institution_info->name.'</h3>';


        $institution_category_id = DB::table('institution')->where('id', $institution_id)->value('institution_category_id');

        $subjects = DB::table('subject')->where('institution_type_id', 7)->where('institution_category_id', $institution_category_id)->get();

        $subject_list = '';

        $subject_list .='<div class="sk-table table-responsive">';
        $subject_list .='<table class="table table-bordered text-center">';
        $subject_list .='<tbody>';
            for ($i = 0; $i < ceil($subjects->count()/5); $i++) {
                $subject_list .= '<tr>';
                foreach ($subjects as $k => $rows) {
                    if ($i * 5 <= $k && $k < $i * 5 + 5) {
                        $subject_list .= '<td class="subject_title" data-id="'.$rows->id.'">'.$rows->title.'</td>';
                    }
                }
                $subject_list .= '</tr>';
            }

                $subject_list .='</tbody>';
            $subject_list .='</table>';
        $subject_list .='</div>';

        $data = array('institution_info'=>$admission_inst,'subjects'=>$subject_list);

        echo json_encode($data);
    }




                              /*material types*/

    public function material_types(Request $request)
    {
        $material_type = DB::table('material_type')->get();
        echo view('ajax.material_types',(['material_type'=>$material_type]));
    }

    public function institution_depaerment(Request $request)
    {
        $institution_id = $request->institution_id;



        $department = DB::table('department')
            ->join('institution_has_department','institution_has_department.department_id','department.id')
            ->where('institution_id',$institution_id)
            ->orderBy('id', 'DESC')
            ->pluck('title', 'id');

        echo view('ajax.institution_depaerment',(['departments'=>$department]));
    }




                      /*material type of higher study and job*/

    public function higher_job_material_types(Request $request)
    {
        $material_type = DB::table('higher_job_material_type')->get();
        echo view('ajax.material_types',(['material_type'=>$material_type]));
    }








    public function material_type_contents(Request $request)
    {
        $material_type_id =  $request->material_type_id;
        $class_id =  $request->class_id;
        $subject_id =  $request->subject_id;
        $institution_id =  $request->institution_id;
        $content_section_id =  $request->content_section_id;
        $contents = DB::table('contents')->where(['material_type_id'=> $material_type_id,'content_section_id'=>$content_section_id,'class_id'=>$class_id,'subject_id'=>$subject_id]);

        if($institution_id){
            $contents->where('institution_id',$institution_id);
        }

        $contents = $contents->get();

        echo view('ajax.material_type_contents',(['contents'=>$contents]));
    }

    public function graduate_contents(Request $request)
    {
        $institution_id =  $request->institution_id;
        $department_id =  $request->department_id;
        $class_id =  $request->class_id;
        $subject_id =  $request->subject_id;
        $material_type_id =  $request->material_type_id;
        $content_section_id =  $request->content_section_id;
        $contents = DB::table('contents')->where(['material_type_id'=> $material_type_id,'content_section_id'=>$content_section_id,'class_id'=>$class_id,'subject_id'=>$subject_id,'department_id'=>$department_id]);

        if($institution_id){
            $contents->where('institution_id',$institution_id);
        }

        $contents = $contents->get();

        echo view('ajax.material_type_contents',(['contents'=>$contents]));
    }

    public function higher_study_contents(Request $request)
    {
        $standarize_test_id =  $request->standarize_test_id;
        $material_type_id =  $request->material_type_id;
        $content_section_id =  $request->content_section_id;
        $contents = DB::table('contents')->where(['material_type_id'=> $material_type_id,'content_section_id'=>$content_section_id,'tests_id'=>$standarize_test_id]);


        $contents = $contents->get();

        echo view('ajax.material_type_contents',(['contents'=>$contents]));
    }




    public function admission_test_contents(Request $request)
    {
        $material_type_id =  $request->material_type_id;
        $category_id =  $request->category_id;
        $subject_id =  $request->subject_id;
        $institution_id =  $request->institution_id;
        $content_section_id =  $request->content_section_id;
        $contents = DB::table('contents')->where(['material_type_id'=> $material_type_id,'content_section_id'=>$content_section_id,'institution_category_id'=>$category_id,'subject_id'=>$subject_id]);

        if($institution_id){
            $contents->where('institution_id',$institution_id);
        }

        $contents = $contents->get();

        echo view('ajax.material_type_contents',(['contents'=>$contents]));
    }

    public function job_preparation_contents(Request $request)
    {
        $job_exam_id =  $request->job_exam_id;
        $subject_id =  $request->subject_id;
        $material_type_id =  $request->material_type_id;
        $content_section_id =  $request->content_section_id;
        $contents = DB::table('contents')->where(['material_type_id'=> $material_type_id,'content_section_id'=>$content_section_id,'tests_id'=>$job_exam_id,'subject_id'=>$subject_id]);


        $contents = $contents->get();

        echo view('ajax.material_type_contents',(['contents'=>$contents]));
    }



    public function content_show(Request $request)
    {
        $content_id =  $request->content_id;
        $content = DB::table('contents')->where('id',$content_id)->first();
        echo view('ajax.content_show',(['content'=>$content]));
    }

    public function country_state(Request $request)
    {
        $country_id =  $request->country_id ;
        $states = DB::table('locations')->where('parent_id',$country_id)->get();
        echo view('ajax.country_state',(['states'=>$states]));
    }

    public function state_city(Request $request)
    {
        $state_id =  $request->state_id ;
        $city = DB::table('locations')->where('parent_id',$state_id)->get();
        echo view('ajax.state_city',(['city'=>$city]));
    }

    public function university_list(Request $request)
    {
        $city_id =  $request->city_id ;
        $universities = DB::table('university')->where('city_id',$city_id)->get();
        echo view('ajax.university_list',(['universities'=>$universities]));
    }
























}
