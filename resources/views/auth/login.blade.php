@extends('layouts.app')

@section('content')

    <div class="container-floaid login-page">
        <div class="row">
            <div class="col-md-3 col-centered-rgf">
                <div class="sk-page-content">
                    <form class="login-form" method="post" action="{{url('login')}}">
                        {{ csrf_field() }}
                        <div class="imgcontainer">
                            <img src="assets/images/slider/download.jpg" alt="Avatar" class="avatar">
                        </div>

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif

                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif

                        <div class="login-form-content">
                            <label for="email"><b>Email</b></label>
                            <input class="box" type="email" placeholder="Email" name="email" required>
                            <label for="password">Password <a class="action" href="{{ url('password/reset') }}">Forgot password?</a></label>
                            <input type="password" placeholder="Enter Password" name="password" required>
                            <button type="submit">Login</button>
                        </div>

                    </form>
                </div>
                <p class="create-account-callout">
                    New to Member?
                    <a data-ga-click="Sign in, switch to sign up" href="register">Create an account</a>.
                </p>
            </div>
        </div>
    </div>

@endsection

@section('js')

    <script>
        $(document).ready(function() {
            ///////////
        })
    </script>

@endsection