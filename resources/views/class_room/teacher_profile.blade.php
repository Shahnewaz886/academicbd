@extends('layouts.app')

@section('content')
    <section class="container">

        <div class="container public">
            <div class="start">
                <div class="head">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="first">
                                All author
                                <i class="fas fa-angle-right"></i>
                                {{ $teacher_info->name }}
                            </div>
                            <div class="pic">
                                <img src="{{ asset($teacher_info->image) }}" width="200" height="100" alt="logo">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="second">
                                <b>About the author</b><br>
                                {{ $teacher_info->about }}

                            </div>
                        </div>
                    </div>
                </div>
                <div class="done">
                    <div class="teacher-right a">
                        <div class="row king">
                            <div class="col-sm-6">
                                24 course
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
                        <div class="fix1">

                            <div class="row">
                                <div class="col-sm-4 rok">
                                    <img src="{{ asset($class->umage) }}" width="200" height="100" alt="logo">
                                </div>
                                <div class="col-sm-8 rok">
                                    <div class="up">
                                        <a href="edit">upwork Bangladesh</a><br>
                                    </div>
                                    {{ $class->description }}<br>
                                </div>
                            </div>

                        </div>
                        @endforeach
                    </div>




                </div>
            </div>
        </div>






    </section>
@endsection

@section('js')


@endsection