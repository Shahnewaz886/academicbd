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
                                @foreach($skill_development_category as $parent)
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="">{{ $parent->title }}</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                    @if($parent->child_cat)
                                    <ul  class="child-category child-item">
                                        @foreach($parent->child_cat as $child)
                                        <li>
                                            <a href="{{ url('skill-development-category/'.$child->id ) }}">{{ $child->title }}</a>
                                        </li>
                                        <li class="border-bottom"></li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                <li class="border-bottom"></li>
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 sk-right-content skpr">
                    @if($contents->count())
                    <div class="sk-table table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>
                            @for ($i = 0; $i < ceil($contents->count()/5); $i++)
                                <tr>
                                    @foreach($contents as $k=>$rows)
                                        @if($i*5<=$k && $k<$i*5+5)
                                            @if($rows->content_type_id==1)      {{--Presentation--}}
                                            <td  data-id="{{$rows->id}}"><a href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                                            @elseif($rows->content_type_id==2)   {{--youtube--}}
                                            <td class="video" data-id="{{$rows->id}}"><embed src="{{ 'http://www.youtube.com/embed/'.$rows->file_location }}" width="425" height="350"></embed></td>
                                            @elseif($rows->content_type_id==3)  {{--pdf--}}
                                            <td  data-id="{{$rows->id}}"><a target="_blank" href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                                            @elseif($rows->content_type_id==4)    {{--Text--}}
                                            <td class="subject_title" data-id="{{$rows->id}}"><a href="{{url('content-detail/'.$rows->id)}}">{{$rows->content_name}}</a></td>
                                            @elseif($rows->content_type_id==5)  {{--doc/docx--}}
                                            <td  data-id="{{$rows->id}}"><a  href="{{ env('APP_URL_FILE').$rows->file_location }}">{{$rows->content_name}}</a></td>
                                            @endif
                                        @endif
                                    @endforeach
                                </tr>
                            @endfor
                            </tbody>
                        </table>
                    </div>
                    @else
                    <h3 class="text-center">Thhere is no Contents</h3>
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

            $('.department2').select2();

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
                            term: term,content_section_id:'{{ Request::segment(2) }}'
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

                $('.department_search').show();
                $('.select2').css('width','100%');

                var institution_id = $(this).val();

                var department_id = $('.department2').val();

                if(department_id){
                    $('.class_subjects').html('');
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
                        url: '/institution-classes',
                        dataType: 'JSON',
                        data: {institution_id: institution_id},
                        success: function( data ) {
                            $('.level-term').html(data.classes);
                        }
                    });
                }


                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/institution-info',
                    dataType: 'JSON',
                    data: {institution_id: institution_id},
                    success: function( data ) {
                        $('.sk-inst-info').html(data.institution_info);
                    }
                });

            })






            $("body").on( "change", ".department2", function() {
                var institution_id = $('.institution2').val();

                $('.class_subjects').html('');
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
                    url: '/institution-classes',
                    dataType: 'JSON',
                    data: {institution_id: institution_id},
                    success: function( data ) {
                        $('.level-term').html(data.classes);
                    }
                });
            })







            $("body").on( "click", ".class_title", function() {
                var class_id = $(this).attr('data-id');

                $('.title').removeClass('selected');
                $('.title').removeAttr('id');
                $(this).attr('id','selected_class');
                $(this).addClass('selected');

                $('.material_types').html('');
                $('.material_type_contents').html('');
                $('.content_show').html('');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/class-subject',
                    dataType: 'JSON',
                    data: {class_id: class_id,institution_type_id:'{{ Request::segment(2)}}'},
                    success: function( data ) {
                        $('.class_subjects').html(data.subjects);
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

                var institution_id = $('.institution2').val();
                var department_id = $('.department2').val();

                var class_id = $('#selected_class').data('id');
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
                    url: '/graduate-contents',
                    dataType: 'HTML',
                    data: {institution_id:institution_id,department_id:department_id,class_id:class_id,subject_id:subject_id,material_type_id: material_type_id,content_section_id:'{{ Request::segment(2) }}'},
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