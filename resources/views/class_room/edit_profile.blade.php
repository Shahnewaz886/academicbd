@extends('layouts.app')
@section('content')
    <section class="container">
        {!! Form::open(['url'=>'update-profile','files'=>true]) !!}

        <div class="form-group">
            <label for="email">Class Name</label>
            <input type="text" required name="name" value="{{ Auth::user()->name  }}" class="form-control" id="name">
        </div>

        <div class="form-group">
            <label for="email">About</label>
            <textarea name="about"  class="form-control" id="name">{{ Auth::user()->about  }}</textarea>
        </div>

        <div class="form-group">
            <label for="exampleFormControlFile1">Image</label>
            <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>

        {!! Form::close() !!}

    </section>
@endsection

@section('js')


@endsection



