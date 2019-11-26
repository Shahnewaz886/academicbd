@extends('layouts.app')

@section('content')
    <section class="sk-page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 skpl">
                    <div class="sk-left-contant text-center">
                        <div class="sk-logo padding-both">
                            <a href="#"><img src="{{ env('APP_URL_FILE').$institution_type->image }}" alt="Institution logo"></a>
                            <h2>{{ $institution_type->title }}</h2>
                        </div>
                        <div class="sk-inst">
                            <ul>
                                <li class="">
                                    <div class="parent-menu">
                                        <a href="{{ url('higher-study/11') }}">STANDARIZED TESTS</a>
                                        <span class="parent-menu-active"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('find-univesity') }}">Find Your University</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('scholarships') }}">Scholarships</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('useful-hogher-education') }}">Useful Higher Edu. sites</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-md-9 sk-right-content skpr higher-study">
                    <ul class="higher-study-menu">
                        @foreach($countries as $country)
                        <li><a href="{{ url('useful-hogher-education/'.$country->id) }}">{{ $country->title }}</a></li>
                        <li>|</li>
                        @endforeach
                    </ul>
                    <h2 class="title">{{ $country_name }}</h2>
                    @if($useful_higher_education->count())
                        @foreach($useful_higher_education as $rows)
                        <div class="study-list">
                            <p class="study-title">{{ $rows->title }}</p>
                            <p class="study-info">{{ $rows->short_desc }}</p>
                            <p class="study-link"><a target="_blank" href="{{ $rows->link }}">Details</a></p>
                        </div>
                        @endforeach
                     @else
                        <h3>There is no content</h3>
                     @endif
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center sk-upload">
                    <div class="ic-login2upload">
                        <a href="#">Login to Upload content</a>
                    </div>
                    <form action="#">
                        <label for="upload">
                            <img src="assets/images/upload.png" alt="">
                        </label>
                        <input id="upload" name="upload" type="file">
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')


    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/css/select2.css" />




    <script>

        jQuery(document).ready(function() {



            $("body").on( "click", ".job_exam_title", function() {
                var job_exam_id = $(this).data('id');

                $('.job_exam_title').removeClass('selected');
                $('.job_exam_title').removeAttr('id');
                $(this).attr('id','selected_exam_title');
                $(this).addClass('selected');

                $('.material_types').html('');
                $('.material_type_contents').html('');
                $('.content_show').html('');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/job-exam-subjects',
                    dataType: 'JSON',
                    data: {job_exam_id: job_exam_id},
                    success: function( data ) {
                        $('.subjects').html(data.subjects);
                    }
                })
            })


            $("body").on( "click", ".subject_title", function() {
                var subject_id = $(this).attr('data-id');

                $('.subject_title').removeClass('selected');
                $('.subject_title').removeAttr('id');
                $(this).attr('id','selected_subject');
                $(this).addClass('selected');

                $('.material_type_contents').html('');
                $('.content_show').html('');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/higher-job-material-types',
                    dataType: 'HTML',
                    success: function( data ) {
                        $('.material_types').html(data);
                    }
                });
            })


            $("body").on( "click", ".material_type_title", function() {

                var job_exam_id = $('#selected_exam_title').data('id');
                var subject_id = $('#selected_subject').data('id');
                var material_type_id = $(this).data('id');

                $('.material_type_title').removeClass('selected');
                $('.material_type_title').removeAttr('id');
                $(this).attr('id','selected_material_type');
                $(this).addClass('selected');
                $('.content_show').html('');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/job-preparation-contents',
                    dataType: 'HTML',
                    data: {job_exam_id:job_exam_id,subject_id:subject_id,material_type_id:material_type_id,content_section_id:'{{ Request::segment(2) }}'},
                    success: function( data ) {
                        $('.material_type_contents').html(data);
                    }
                });
            })



            $("body").on( "click", ".video", function() {
                var content_id = $(this).attr('data-id');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/content-show',
                    dataType: 'HTML',
                    data: {content_id:content_id},
                    success: function( data ) {
                        $('.content_show').html(data);
                    }
                });
            })

        });

    </script>



@endsection