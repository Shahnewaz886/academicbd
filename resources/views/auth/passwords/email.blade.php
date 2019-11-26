@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-offset-6 col-centered-fgp">
                <h3><i class="fa fa-lock fa-4x"></i></h3>
                <h2 class="text-center">Forgot Password?</h2>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="panel-body">


                    <form id="register-form" role="form" autocomplete="off" class="form text-center" method="POST" action="{{ url('password/email') }}">
                            {{ csrf_field() }}

                        <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                <input id="email" name="email" placeholder="email address" class="form-control"  type="email" value="{{ old('email') }}" required>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group button">
                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
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



