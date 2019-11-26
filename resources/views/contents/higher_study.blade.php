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
                <div class="col-md-9 sk-right-content skpr">

                    <div class="sk-table table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>
                            @for ($i = 0; $i < ceil($standarized_tests->count()/5); $i++)
                                <tr>
                                    @foreach($standarized_tests as $k=>$rows)
                                        @if($i*5<=$k && $k<$i*5+5)
                                            <td class="test_title" data-id="{{$rows->id}}">{{$rows->title}}</td>
                                        @endif
                                    @endforeach
                                </tr>
                            @endfor
                            </tbody>
                        </table>
                    </div>

                    <div class="material_types">

                    </div>

                    <div class="material_type_contents">


                    </div>

                    <div class="content_show">


                    </div>


                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center sk-upload">
                    <div class="ic-login2upload">
                        <label for="upload">
                            <a href="{{ url('uploads-content') }}"><img src="{{asset('assets/images/upload.png')}}" alt=""></a>
                        </label>
                    </div>
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




            $("body").on( "click", ".test_title", function() {

                $('.test_title').removeClass('selected');
                $('.test_title').removeAttr('id');
                $(this).attr('id','selected_test');
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
                    url: '/material-types',
                    dataType: 'HTML',
                    success: function( data ) {
                        $('.material_types').html(data);
                    }
                });
            })


            $("body").on( "click", ".material_type_title", function() {

                var standarize_test_id = $('#selected_test').data('id');
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
                    url: '/higher-study-contents',
                    dataType: 'HTML',
                    data: {standarize_test_id:standarize_test_id,material_type_id:material_type_id,content_section_id:'{{ Request::segment(2) }}'},
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