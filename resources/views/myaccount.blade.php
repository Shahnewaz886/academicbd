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