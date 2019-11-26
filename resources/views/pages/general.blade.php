@extends('layouts.app')

@section('content')
    <section class="container">
        <section class="ic-latest-news-wrapper ic-p">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="ic-single-ln">
                            <h3>{{ $page->title }}</h3>
                            {!! $page->detail  !!}
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
            var url      = window.location.href;
            $('nav a').each(function() {
                if (this.href == url) {
                    $(this).parent().attr("class", "active");
                  //  $(this).parent().parent().parent().attr("class", "active");
                }
            })


        })


    </script>



@endsection