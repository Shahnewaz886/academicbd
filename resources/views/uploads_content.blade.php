@extends('layouts.app')

@section('content')
    <section class="container">
        {!! Form::open(['url'=>'content-submit','files'=>true]) !!}

        <div class="form-group">
            <label for="name">Content Section</label>
            @php $content_section->prepend('Select Content Section','') @endphp
            {!! Form::select('content_section_id', $content_section, old('content_section_id'),['class'=>'form-control','required'=>'required']) !!}
        </div>

        <div class="content-section-field">


        </div>

        <div class="form-group">
            <label for="email">Content Name</label>
            <input type="text" name="content_name" class="form-control" id="email">
        </div>

        <div class="form-group">
            <label>Content Type</label>
            @php $content_type->prepend('Select Content Type','') @endphp
            {!! Form::select('content_type_id', $content_type, old('content_type_id'),['class'=>'form-control','required'=>'required']) !!}
        </div>

        <div class="main_content">

        </div>

        {{--<div class="form-group">
            <label for="exampleFormControlFile1">File</label>
            <input type="file" name="content_file" class="form-control-file" id="exampleFormControlFile1">
        </div>--}}

        <button type="submit" class="btn btn-default">Submit</button>

        {!! Form::close() !!}

    </section>
@endsection

@section('js')


    <script>
                                /*after content section change add section wise form*/

            $("body").on( "change", "[name='content_section_id']", function() {
                var content_section_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/content-section',
                    dataType: 'HTML',
                    data: {content_section_id: content_section_id},
                    success: function( data ) {
                        $('.content-section-field').html(data);
                    }
                });
            })

                                /*after change class of school & college section and add subject*/

            $("body").on( "change", "[name='class_id']", function() {
                var class_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/contents-class-subject',
                    dataType: 'HTML',
                    data: {class_id: class_id,institution_type_id:1},
                    success: function( data ) {
                        $('.subject').html(data);
                    }
                });
            })

                        /*after chnage institution category of admision test and add institution and subject*/

            $("body").on( "change", "[name='institution_category_id']", function() {
                var institution_category_id = $(this).val();
                var institution_type_id = $("[name='content_section_id']").val();

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/institute-category-institute-subject',
                    dataType: 'HTML',
                    data: {institution_category_id: institution_category_id,institution_type_id:institution_type_id},
                    success: function( data ) {
                        $('.institutions-subject').html(data);
                    }
                });
            })

                         /*after change job exam and add subjet*/

            $("body").on( "change", "[name='tests_id']", function() {
                var tests_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/job-exam-subject',
                    dataType: 'HTML',
                    data: {job_exam_id: tests_id},
                    success: function( data ) {
                        $('.subject').html(data);
                    }
                });
            })



                                     /*after change content type and add file or youtube or text*/

            $("body").on( "change", "[name='content_type_id']", function() {
                var content_type_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/content-type-content',
                    dataType: 'HTML',
                    data: {content_type_id: content_type_id},
                    success: function( data ) {
                        $('.main_content').html(data);
                    }
                });
            })

    </script>



@endsection