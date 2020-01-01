@extends('layouts.app')

@section('content')
    <div class="container-flaid">
        <div class="row background">
            <div class="col-md-5 col-offset-6 col-centered-rgf">
                <div class="sk-page-content">
                    <form class="registration-form-content" method="post" action="{{ route('register') }}">
                        {{ csrf_field() }}
                        <div class="imgcontainer">
                            <img src="assets/images/slider/download.jpg" alt="Avatar" class="avatar">
                            <h2>Registration Form</h2>
                        </div>
                        <!--- For Name---->
                        <div class="col-md-12">
                            <div class="row form-group">
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <label class="firstname">First Name :</label></div>
                                <div class="col-xs-8 col-sm-8 col-md-8">
                                    <input type="text" name="name" required id="fname" placeholder="Enter t Name" class="form-control ">
                                </div>
                            </div>
                        </div>


                        <!-----For email---->

                        <div class="col-md-12">
                            <div class="row form-group">
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <label class="mail" >Email : </label></div>
                                <div class="col-xs-8 col-sm-8 col-md-8"	>
                                    <input type="email" name="email" required id="email"placeholder="Enter your email" class="form-control" >
                                </div>
                            </div>
                        </div>


                        <!-----For Password and confirm password---->
                        <div class="col-md-12">
                            <div class="row form-group">
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <label class="pass">Password :</label></div>
                                <div class="col-xs-8 col-sm-8 col-md-8">
                                    <input type="password" name="password" id="password" placeholder="Enter your Password" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="row form-group">
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <label class="pass">Confirm Password :</label></div>
                                <div class="col-xs-8 col-sm-8 col-md-8">
                                    <input placeholder="Password" name="password_confirmation" type="password" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="row form-group">
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <label class="option">User Type :</label></div>
                                    <div class="col-xs-8 col-sm-8 col-md-8">
                                        <select name="user_type" class="form-control" id="exampleFormControlSelect1">
                                            <option value="Student">Student</option>
                                            <option value="Teacher">Teacher</option>
                                        </select>
                                    </div>
                            </div>
                        </div>
                        <button type="submit" class="btn mb-2">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {{--<div class="container-fluid">
        <div class="row">
            <div class="col-md-5 col-offset-6 col-centered-rgf">
                <div class="sk-page-content">
                    <form class="registration-form" method="post" action="{{ route('register') }}">
                        {{ csrf_field() }}
                        <div class="imgcontainer">
                            <img src="assets/images/slider/download.jpg" alt="Avatar" class="avatar">
                            <h2>Registration Form</h2>
                        </div>

                        <div class="registration-form-content">
                            <label for="name"><b>Name</b></label>
                            <input class="box" type="text" placeholder="Enter Name" name="name" required>
                            <label for="email"><b>Email</b></label>
                            <input class="box" type="text" placeholder="Email" name="email" required>
                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="password" required>
                            <label for="psw"><b>confirm-Password</b></label>
                            <input type="password" placeholder="confirm Password" name="password_confirmation" required>
                            <label for="option"><b>Select list (select one)</b></label>
                            <select class="form-control option" name="user_type">
                                <option value="Student">Student</option>
                                <option value="Teacher">Teacher</option>
                            </select>
                            <button type="submit">Registration-submit</button>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>--}}
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

