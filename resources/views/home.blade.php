@extends('layouts.app')

@section('content')
    <section class="sk-slider-wrapper" id="sk-slider">
        <div class="sk-slider">
            <div class="sk-single-slider">
                <div class="sk-slider-fig">
                    <img class="img-fluid" src="assets/images/slider/s1.jpg" alt="slider one">
                </div>
            </div>
            <div class="sk-single-slider">
                <div class="sk-slider-fig">
                    <img class="img-fluid" src="assets/images/slider/s2.jpg" alt="slider one">
                </div>
            </div>
            <div class="sk-single-slider">
                <div class="sk-slider-fig">
                    <img class="img-fluid" src="assets/images/slider/s3.jpg" alt="slider one">
                </div>
            </div>
            <div class="sk-single-slider">
                <div class="sk-slider-fig">
                    <img class="img-fluid" src="assets/images/slider/s4.jpg" alt="slider one">
                </div>
            </div>
        </div>
    </section>
    <!-- slider /end -->

    <!-- search -->
{{--    <section class="sk-search" id="sk-search">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2>Looking for something?</h2>
                    <div class="sk-search-frm">
                        <input type="text" placeholder="Keywords...">
                        <button type="submit">Search</button>
                    </div>
                </div>
            </div>
        </div>
    </section>--}}
    <!-- search /end -->

    <!-- counter -->
    @if(settings('show_statistics_section', $settings)=='yes')
    <section class="sk-counter">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="align-items-center media">
                        <img src="{{asset('assets/images/icons/1.png')}}" alt="Icon">
                        <div class="media-body">
                            <span>Institute</span>
                            <span>1214+</span>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="align-items-center media">
                        <img src="assets/images/icons/2.png" alt="Icon">
                        <div class="media-body">
                            <span>Teacher</span>
                            <span>537+</span>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="align-items-center media">
                        <img src="assets/images/icons/3.png" alt="Icon">
                        <div class="media-body">
                            <span>Students</span>
                            <span>9768+</span>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="align-items-center media">
                        <img src="assets/images/icons/4.png" alt="Icon">
                        <div class="media-body">
                            <span>Lecture</span>
                            <span>889+</span>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="align-items-center media">
                        <img src="assets/images/icons/5.png" alt="Icon">
                        <div class="media-body">
                            <span>Text book</span>
                            <span>389+</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @endif
    <!-- counter /end -->

    <!-- courses -->
    <section class="sk-courses">
        <div class="container">
            <div class="row sks-row">

                <div class="sk-col">
                    <a  href="{{url('contents/1')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[0]->image }}" alt="">
                        <span>{{ $institution_type[0]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('contents/2')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[1]->image }}" alt="">
                        <span>{{ $institution_type[1]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('contents/3')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[2]->image }}" alt="">
                        <span>{{ $institution_type[2]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('contents/4')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[3]->image }}" alt="">
                        <span>{{ $institution_type[3]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('contents/5')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[4]->image }}" alt="">
                        <span>{{ $institution_type[4]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('contents/6')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[5]->image }}" alt="">
                        <span>{{ $institution_type[5]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('admission-contents/7')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[6]->image }}" alt="">
                        <span>{{ $institution_type[6]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('graduate-contents/8')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[7]->image }}" alt="">
                        <span>{{ $institution_type[7]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('graduate-contents/9')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[8]->image }}" alt="">
                        <span>{{ $institution_type[8]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('skill-development/10')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[9]->image }}" alt="">
                        <span>{{ $institution_type[9]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('higher-study/11')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[10]->image }}" alt="">
                        <span>{{ $institution_type[10]->title }}</span>
                    </a>
                </div>
                <div class="sk-col">
                    <a  href="{{url('job-preparation/12')}}">
                        <img src="{{ env('APP_URL_FILE').$institution_type[11]->image }}" alt="">
                        <span>{{ $institution_type[11]->title }}</span>
                    </a>
                </div>

            </div>
        </div>
    </section>
    <!-- courses /end -->

    <!-- widgets -->
    <section class="sk-widgets">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="sk-single-widget">
                        <div class="sk-widget-logo">
                            <a href="#"><img src="{{asset('assets/images/ftr-logo.png')}}" alt="Footer Logo"></a>
                            <p>The largest online educational platform of Bangladesh that teaches more than 150,000 students every day free of cost.
                                We have videos, quizzes, smart books &amp; live classes for students from class 8-12 &amp; universitygoers.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3  offset-md-1">
                    <div class="sk-single-widget">
                        <h2>Quick links</h2>
                        <ul>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">All Courses</a></li>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">Upcoming Events</a></li>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">Our Blogs</a></li>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">Portfolio</a></li>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">Shop</a></li>
                            <li><span><i class="icofont icofont-link-alt"></i></span><a href="#">Recent Exams</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sk-single-widget">
                        <h2>JOIN OUR NEWSLETTER</h2>
                        <form action="#">
                            <input type="text" placeholder="Enter your email address">
                            <button type="submit">Subscribe</button>
                        </form>
                        <div class="sk-social">
                            <h3>Follow us</h3>
                            <ul>
                                @if($global_setting->facebook)
                                <li><a target="_blank" href="{{$global_setting->facebook}}"><i class="icofont icofont-social-facebook"></i></a></li>
                                @endif
                                @if($global_setting->twitter)
                                <li><a target="_blank" href="{{$global_setting->twitter}}"><i class="icofont icofont-social-twitter"></i></a></li>
                                @endif
                                @if($global_setting->google_plus)
                                <li><a target="_blank" href="{{$global_setting->google_plus}}"><i class="icofont icofont-social-google-plus"></i></a></li>
                                @endif
                                @if($global_setting->youtube)
                                <li><a target="_blank" href="{{$global_setting->youtube}}"><i class="icofont icofont-youtube-play"></i></a></li>
                                @endif
                                @if($global_setting->linkedin)
                                <li><a target="_blank" href="{{$global_setting->linkedin}}"><i class="icofont icofont-brand-linkedin"></i></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('js')

<script>
    $(document).ready(function(){
        $('.innermenu').hover(function(){
            jQuery(this).children().next().css("display", "block");
            jQuery(this).children().children().next().css("display", "block");
        });

        $('.innermenu').mouseleave(function(){
            jQuery(this).children().next().css("display", "none");
            jQuery(this).children().children().next().css("display", "none");
        });

        //Mobile nav
        jQuery(function(){
            // $('#menu').slicknav({
            //     label: ""
            // });
        });
        /*Home slider*/
        $('.sk-slider').slick({
            draggable: true,
            arrows: true,
            dots: true,
            // fade: true,
            speed: 900,
            autoplay: false,
            infinite: true,
        });


        $(".custom-select-box").each(function() {
            var classes = $(this).attr("class"),
                id      = $(this).attr("id"),
                name    = $(this).attr("name");
            var template =  '<div class="' + classes + '">';
            template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
            template += '<div class="custom-options">';
            $(this).find("option").each(function() {
                template += '<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>';
            });
            template += '</div></div>';

            $(this).wrap('<div class="custom-select-wrapper"></div>');
            $(this).hide();
            $(this).after(template);
        });
        $(".custom-option:first-of-type").hover(function() {
            $(this).parents(".custom-options").addClass("option-hover");
        }, function() {
            $(this).parents(".custom-options").removeClass("option-hover");
        });
        $(".custom-select-trigger").on("click", function() {
            $('html').one('click',function() {
                $(".custom-select-box").removeClass("opened");
            });
            $(this).parents(".custom-select-box").toggleClass("opened");
            event.stopPropagation();
        });
        $(".custom-option").on("click", function() {
            $(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
            $(this).parents(".custom-options").find(".custom-option").removeClass("selection");
            $(this).addClass("selection");
            $(this).parents(".custom-select-box").removeClass("opened");
            $(this).parents(".custom-select-box").find(".custom-select-trigger").text($(this).text());
        });
    })
</script>




@endsection