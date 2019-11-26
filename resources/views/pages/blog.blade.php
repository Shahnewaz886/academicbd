@extends('layouts.app')

@section('content')
    <section class="container">
        <section class="ic-latest-news-wrapper ic-p">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        @foreach($blog as $row)
                        <div class="ic-single-ln">
                            <h3><a href="{{ url('blog/'.$row->id) }}">{{$row->title}}</a></h3>
                            <p>{{$row->short_desc}}</p>
                            <a href="{{ url('blog/'.$row->id) }}">Continue Reading</a>
                        </div>
                        @endforeach
                    </div>

                    <div class="col-lg-4">
                        <div class="pull-right">

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
             ///////////
        })
    </script>

@endsection