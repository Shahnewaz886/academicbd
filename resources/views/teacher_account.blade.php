@extends('layouts.app')

@section('content')
    <section class="container">

        <div class="container teacher ">
            <div class="head">
                <div class="header">
                    <h2>{{Auth::user()->name}}</h2>
                </div>
                <div class="full">
                    <div class="studio">
                        <div class="row">

                            <div class="col-sm-4 first">
                                <div class="teacher-left">
                                    <img src="{{asset(Auth::user()->image)}}" alt="">
                                    <ul>
                                        <li><a href="{{ url('edit-profile') }}">Update My Profile</a></li>
                                        <li><a href="{{ url('create-class') }}">Create Class</a></li>
                                        <li><a href="#">My Class List</a></li>
                                        <li><a href="#">Pending Request</a></li>
                                        <li><a href="#">
                                                {!! Form::open(['route' => 'auth.logout', 'id' => 'logout']) !!}
                                                <button type="submit">Logout</button>
                                                {!! Form::close() !!}</a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="save">
                                    {{ Auth::user()->about }}
                                </div>


                            </div>
                            <div class="col-sm-8">

                                <div class="teacher-right">
                                    <div class="row king">
                                        <div class="col-sm-6">
                                            {{ $classes->count() }} Courses
                                        </div>
                                        <div class="col-sm-6 right">
                                            <b>sorted by</b>
                                            <select>
                                                <option value="volvo">realise date</option>
                                                <option value="saab">Saab</option>
                                                <option value="opel">Opel</option>
                                                <option value="audi">Audi</option>
                                            </select>
                                        </div>
                                    </div>

                                    @foreach($classes as $class)

                                    <div class="fix">
                                        <div class="row">
                                            <div class="col-sm-4 rok">
                                                <img src="{{asset($class->image)}}" alt="">
                                            </div>
                                            <div class="col-sm-8 rok">
                                                <h2><a href="{{ url('classroom/'.$class->id) }}">{{$class->name}}</a></h2>
                                                <p>{{ $class->description }}</p>
                                                <a href="{{ url('edit-class/'.$class->id) }}">Edit</a>
                                            </div>
                                        </div>
                                    </div>

                                    @endforeach



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </section>
@endsection

@section('js')


    <script>



        $(document).ready(function() {




        })


    </script>



@endsection