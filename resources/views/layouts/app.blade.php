<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{ settings('site_title', $settings) }}</title>
    <link rel="shortcut icon" type="image/png" href="{{  env('APP_URL_FILE').settings('site_fevicon', $settings) }}">
    <!-- roboto google font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link href="{{asset('assets/css/datepicker.min.css')}}" rel="stylesheet" type="text/css">
    <!-- icofont CSS -->
    <link rel="stylesheet" href="{{asset('assets/web-fonts-with-css/css/fontawesome-all.min.css')}}">
    <!-- Slick CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/slick.css')}}">
    <!-- icofont css -->
    <link rel="stylesheet" href="{{asset('assets/css/icofont.css')}}">
    <!-- animate css -->
    <link rel="stylesheet" href="{{asset('assets/css/animate.css')}}">
    <!-- Global Custom CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/global.css')}}">
    <!-- custom css -->
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <!-- site title -->
    <link rel="stylesheet" href="{{asset('assets/css/mediaQuery.css')}}">


</head>
<body>

<!-- main -->
<main>
    <!-- header -->

    <header>
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-expand-lg navbar-light sk-login">
                    <div class="index-logo">
                        <a href="{{url('/')}}"><img src="{{ env('APP_URL_FILE').settings('site_logo', $settings) }}" alt="Logo"></a>
                    </div>
                    <button class="navbar-toggler logo-icon" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <ul id="menu" class="menu-responsive">
                                <li><a href="{{url('/')}}">Home</a></li>
                                <li><a href="{{url('blog.html')}}">Blog</a></li>
                                <li><a href="{{url('about.html')}}">About</a></li>
                                <li><a href="{{url('feedback.html')}}">Feedback</a></li>
                            </ul>
                        </ul>
                        <div class="shiksha-btn d-none   d-md-block  d-lg-block">
                            <a href="{{ url('classroom') }}" class="sbtn-link class-btn">Class Room</a>
                            @if(!Auth::check())
                            <a href="##" class="index sbtn-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</a>
                            <ul class="dropdown-menu dropdown-menu-right dropdown">
                                <li class="px-3 py-2">
                                    <form class="form" method="post" action="{{url('login')}}" role="form">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <input id="emailInput" name="email" placeholder="Email" class="form-control form-control-sm" type="email" required="">
                                        </div>
                                        <div class="form-group">
                                            <input id="passwordInput" name="password" placeholder="Password" class="form-control form-control-sm" type="password" required="">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                                        </div>
                                        <div class="form-group">
                                            <small><a class="forget-password" href="{{ url('password/reset') }}"><strong>Forgot password?</strong></a><a class="forget-password" href="{{ url('register') }}"><strong>Account Create?</strong></a></small>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                            @else
                                <a href="{{url('myaccount')}}" class="index sbtn-link">Account</a>
                            @endif
                        </div>
                    </div>
                </nav>
                <div class="shiksha-btn  d-md-none">
                    <a href="#" class="sbtn-link class-btn">Class Room</a>
                    <a href="##" class="index sbtn-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="px-3 py-2">
                            <form class="form" role="form">
                                <div class="form-group">
                                    <input id="emailInput" placeholder="Email" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <input id="passwordInput" placeholder="Password" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                </div>
                                <div class="form-group">
                                    <small><a class="forget-password" href="#"><strong>Forgot password?</strong></a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    {{--<header>
        <div class="container">
            <div class="row">
                <nav>
                    <div class="logo">
                        <a href="{{url('/')}}"><img src="assets/images/logo.png" alt="Logo"></a>
                    </div>
                    <ul id="menu">
                        <li><a href="{{url('/')}}">Home</a></li>
                        <li><a href="{{url('courses.html')}}">Courses</a></li>
                        <li><a href="{{url('blog.html')}}">Blog</a></li>
                        <li><a href="{{url('about.html')}}">About</a></li>
                        <li><a href="{{url('feedback.html')}}">Feedback</a></li>
                    </ul>
                    <div class="shiksha-btn">
                        <a href="#" class="sbtn-link">Class Room</a>
                        <a href="#" class="sbtn-link">Login</a>
                    </div>
                </nav>
            </div>
        </div>
    </header>--}}


     @yield('content')

    <footer>
        <div class="container">
            <div class="row">
                <nav>
                    <ul>
                        <li><a href="{{url('about.html')}}">About us</a></li>
                        <li><a href="{{url('feedback.html')}}">Feedback</a></li>
                        <li><a href="{{url('policy.html')}}">Privacy policy</a></li>
                        <li><a href="{{url('terms.html')}}">Terms of use</a></li>
                        <li><a href="{{url('contact.html')}}">Contact us</a></li>
                        <li><a href="{{url('sitemap.html')}}">Sitemap</a></li>
                    </ul>
                </nav>
                <div class="col-sm-12 text-center">
                    <p>BanglaOnlineEdu @ 2018 All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>


</main>
<!-- main /end -->

<!-- jQuery -->
{{--
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
--}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
{{--<script src="{{asset('assets/js/jquery.min.js')}}"></script>--}}
<!-- slicknav js -->
<script src="{{asset('assets/js/jquery.slicknav.js')}}"></script>
<!-- Bootstrap js -->
<script src="{{asset('assets/js/bootstrap.min.js')}}"></script>
<!-- Slick js -->
<script src="{{asset('assets/js/slick.min.js')}}"></script>
<!-- scripts js -->
<script src="{{asset('assets/js/scripts.js')}}"></script>

<script src="{{asset('assets/js/bootstrap-fileupload.js')}}"></script>

<script>

    $(document).ready(function() {

        var url      = window.location.href;

        $('#menu a').each(function() {
            if (this.href == url) {
                $(this).parent().attr("class", "active");
                //  $(this).parent().parent().parent().attr("class", "active");
            }
        })


    })


</script>


@yield('js')


</body>
</html>
