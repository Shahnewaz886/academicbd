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
                        <div class="sk-inst padding-both">
                            @php $institution_categories->prepend('Select Categories','') @endphp
                            {!! Form::select('institution_category_id', $institution_categories, old('institution_category_id'),['class'=>'form-control category2']) !!}
                        </div>
                        <div class="sk-inst padding-both institution" style="display: none">
                            <select name="skinst" class="institution2">
                            </select>
                        </div>
                        <div class="sk-inst-info">

                        </div>
                    </div>
                </div>
                <div class="col-md-9 sk-right-content skpr">
                    <div class="sk-slider">
                        <div class="sk-single-slider">
                            <div class="sk-slider-fig">
                                <img class="img-fluid" src="{{asset('assets/images/slider/s1.jpg')}}" alt="slider one">
                            </div>
                        </div>
                        <div class="sk-single-slider">
                            <div class="sk-slider-fig">
                                <img class="img-fluid" src="{{asset('assets/images/slider/s2.jpg')}}" alt="slider one">
                            </div>
                        </div>
                        <div class="sk-single-slider">
                            <div class="sk-slider-fig">
                                <img class="img-fluid" src="{{asset('assets/images/slider/s3.jpg')}}" alt="slider one">
                            </div>
                        </div>
                        <div class="sk-single-slider">
                            <div class="sk-slider-fig">
                                <img class="img-fluid" src="{{asset('assets/images/slider/s4.jpg')}}" alt="slider one">
                            </div>
                        </div>
                    </div>

                    <div class="subjects">


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

            $('.category2').select2();

            $("body").on( "change", ".category2", function() {
                $('.institution').show();
                $('.select2').css('width','100%');

                $('.material_types').html('');
                $('.material_type_contents').html('');
                $('.content_show').html('');

                var category_id = $(this).val();

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/category-subjects',
                    dataType: 'JSON',
                    data: {category_id: category_id,institution_type_id:7},
                    success: function( data ) {
                        $('.subjects').html(data.subjects);
                    }
                });
            })




            $('.institution2').select2({

                minimumInputLength: 3,
                placeholder: 'Search institution',
                ajax: {
                    url: '/search-institution',
                    dataType: 'json',
                    type: "GET",
                    quietMillis: 50,
                    data: function (term) {
                        return {
                            term: term,category_id:$('.category2').val(),content_section_id:'{{ Request::segment(2) }}'
                        };
                    },
                    processResults: function (data) {
                        return {
                            results: $.map(data, function (item) {
                                return { id:item.id , text: item.name };
                            })
                        };
                    }
                }
            });

            $("body").on( "change", ".institution2", function() {
                var institution_id = $(this).val();

                $('.material_types').html('');
                $('.material_type_contents').html('');
                $('.content_show').html('');

                $('.title').removeClass('selected');
                $('.title').removeAttr('id');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/admission-institution-info',
                    dataType: 'JSON',
                    data: {institution_id: institution_id},
                    success: function( data ) {
                        $('.sk-inst-info').html(data.institution_info);
                        $('.subjects').html(data.subjects);
                    }
                });
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

                var category_id = $('.category2').val();

                var subject_id = $('#selected_subject').attr('data-id');
                var institution_id = $('.institution2').val();
                var material_type_id = $(this).attr('data-id');


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
                    url: '/admission-test-contents',
                    dataType: 'HTML',
                    data: {category_id:category_id,subject_id:subject_id,material_type_id: material_type_id,content_section_id:'{{ Request::segment(2) }}',institution_id:institution_id},
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