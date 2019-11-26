@extends('layouts.app')
@section('content')
    <section class="container">
        {!! Form::open(['url'=>'update-class','files'=>true]) !!}
        <input type="hidden" required name="id" value="{{ $single_class->id }}" class="form-control" id="name">
        <div class="form-group">
            <label for="email">Class Name</label>
            <input type="text" required name="name" value="{{ $single_class->name }}" class="form-control" id="name">
        </div>

        <div class="form-group">
            <label for="email">Embed Code</label>
            <input type="text" name="embed_code" value="{{ $single_class->embed_code }}" class="form-control" id="name">
        </div>

        <div class="form-group">
            <label for="email">Class Date</label>
            <input autocomplete="off" type='text' class="form-control" {{ $single_class->class_date }} name="class_date" id='timepicker-actions-exmpl' />
        </div>

        <div class="form-group">
            <label for="exampleFormControlFile1">File</label>
            <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
        </div>

        <div class="form-group">
            <label for="email">Description</label>
            <textarea name="description"  class="form-control" id="description">{{ $single_class->description }}</textarea>
        </div>


        <div class="form-group">
            <label>Open For All</label>
            {!! Form::select('is_all_open', ['1' => 'Yes','0' => 'No'],  $single_class->is_all_open,['class'=>'form-control']) !!}<i></i>
        </div>


        <button type="submit" class="btn btn-default">Submit</button>

        {!! Form::close() !!}

    </section>
@endsection

@section('js')
    <script src="{{asset('assets/js/datepicker.js')}}"></script>
    <script>
        $('#timepicker-actions-exmpl').datepicker({
            timepicker: true,
            language: {
                days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
                daysShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                daysMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                months: ['January','February','March','April','May','June', 'July','August','September','October','November','December'],
                monthsShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                today: 'Today',
                clear: 'Clear',
                dateFormat: 'mm/dd/yyyy',
                timeFormat: 'hh:ii aa',
                firstDay: 0
            },
        })
    </script>

@endsection



