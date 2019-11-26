@extends('layouts.app')

@section('content')
    <section class="container">

        <div class="container class-room">
            <div class="header">
                <b>online classes</b>
            </div>
            <div class="on">
                ongoing classes
            </div>
            <div class="middle">
                <div class="row">
                    @foreach($upcomming_class as $row)
                    <div class="col-sm-3">
                        <div class="back">
                            <div class="pic1">
                                <img src="{{asset($row->image)}}" alt="">
                            </div>
                            <div class="the">
                                <a href="{{ url('classroom/'.$row->id) }}">{{ $row->name }}</a>
                            </div>

                        </div>
                    </div>
                    @endforeach



                </div>
            </div>
            <div class="up">
                upcoming classes
            </div>
            <div class="footer">
                <div class="row">
                    @foreach($upcomming_class as $row)
                    <div class="col-sm-3">
                        <div class="back">
                            <div class="pic1">
                                <img src="{{asset($row->image)}}" alt="">
                            </div>
                            <div class="the">
                                <a href="{{ url('classroom/'.$row->id) }}">{{ $row->name }}</a>
                            </div>

                        </div>
                    </div>
                    @endforeach


                </div>
            </div>
        </div>


    </section>
@endsection

@section('js')




    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>


    <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>


    <script>
        $(document).ready(function() {
            $('#datetimepicker1').datetimepicker();
        })
    </script>


@endsection