@extends('layouts.app')

@section('content')
    <section class="container">

        <div class="first a">
            <div class="row">
                <div class="col-sm-6">
                    developler
                    <i class="fas fa-angle-right"></i>
                    programing language<br>
                    <b>{{ $singleclass->name }}</b>
                </div>
                <div class="col-sm-6 text-center">
                    <i class="fas fa-share-square"></i>
                    <a class="hedr" href="share"><b>Share</b></a><br>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-8 lost">
                <div class="image">
                    @php $youtube = explode('=',$singleclass->embed_code) @endphp
                    <iframe width="100%" height="250px"  src="https://www.youtube.com/embed/{{ end($youtube)  }}"></iframe>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="auto">
                            <div class="name text-center">
                                <b>Author</b>
                            </div>
                            <div class="pic">
                                <a href="{{ url('teacher/'.$singleclass->teacher_id) }}"><img src="{{asset('assets/images/logo.png')}}" alt=""></a>
                            </div>
                            <div class="joe text-center">
                                joe marini
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="auto">
                            <div class="date">
                                <b>realeased</b> 1/02/2018
                            </div>
                            <div class="python">
                                A sample anonymized data set,<br>
                                including 5,000<br>
                                patients and 500,000<br>
                                observations, is available<br>
                                for the following Platform releases<br>
                                <li><a class="hedr" href="#">update my profile</a>
                                <li><a class="hedr" href="#">create class</a>
                                <li><a class="hedr" href="#">my class list</a>
                                <li><a class="hedr" href="#">pending request</a>
                            </div>
                            <div class="show">
                                <a class="hedr" href="#"><b>show more</a></b><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="end">
                    <div class="relatedrelated">
                        <b>Realated course</b>
                    </div>
                    <div class="home">
                        <div class="row">
                            <div class="col-sm-6">
                                <img src="images/water lili.jpg" alt="logo">
                            </div>
                            <div class="col-sm-6 left">
                                <a class="hedr" href="#"><b>sample</a><br></b>
                                programing<br>
                                foundation...<br>
                                with sumon allardance
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 rob">
                            <img src="images/water lili.jpg"  alt="logo">
                        </div>
                        <div class="col-sm-6 left">
                            <a class="hedr" href="#"><b>sample</a><br></b>
                            programing<br>
                            foundation...<br>
                            with sumon allardance
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </section>
@endsection

@section('js')


@endsection