@extends('layouts.app')

@section('content')
    <section class="container">
        <section class="ic-latest-news-wrapper ic-p">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="ic-single-ln">
                            <div class="ic-single-ln">
                                <p><b>Name:</b> {{Auth::user()->name}}</p>
                                <p><b>Email:</b> {{Auth::user()->email}}</p>
                                <p><b>User Type:</b> {{Auth::user()->user_type}}</p>
                                {!! Form::open(['route' => 'auth.logout', 'id' => 'logout']) !!}
                                <button class="btn" type="submit">Logout</button>
                                {!! Form::close() !!}
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4">
                        <div class="ic-sidebar">

                            <div class="ic-single-sidebar">
                                <h3>Recent Post</h3>
                                <ul>
                                    <li><a href="#">Narcotics Trade in Ctg: Over 100 dealers control 300 spots</a></li>
                                    <li><a href="#">Flawed logic for quota</a></li>
                                    <li><a href="#">Maternal medicine</a></li>
                                    <li><a href="#">MAECENAS ALIQUAM PURUS SIT AMET NISI COMMODO TEMPOR QUIS ET LACUS</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

    </section>
@endsection

@section('js')


    <script>



        $(document).ready(function() {




        })


    </script>



@endsection