@extends('layouts.app')

@section('content')
    <section class="sk-page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 skpl">
                    <div class="sk-left-contant text-center">
                        <div class="sk-logo padding-both">
                            <a href="#"><img src="{{ env('APP_URL_FILE').$institution_type->image }}" alt="Institution logo"></a>
                            <h2>{{ $institution_type->title }}</h2>
                        </div>
                        <div class="sk-inst">
                            <ul>
                                <li class="">
                                    <div class="parent-menu">
                                        <a href="{{ url('higher-study/11') }}">STANDARIZED TESTS</a>
                                        <span class="parent-menu-active"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('find-univesity') }}">Find Your University</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('scholarships') }}">Scholarships</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                                <li class="border-bottom"></li>
                                <li class="innermenu">
                                    <div class="parent-menu">
                                        <a href="{{ url('useful-hogher-education') }}">Useful Higher Edu. sites</a>
                                        <span class="parent-menu-hover"><i class="icofont  icofont-curved-right"></i></span>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-md-9 sk-right-content skpr">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Country</label>
                                    @php $countries->prepend('Select Country','') @endphp
                                    {!! Form::select('country_id', $countries, old('country_id'),['class'=>'form-control','required'=>'required']) !!}
                                </div>
                            </div>
                            <div class="col-md-4 state">
                                <div class="form-group">
                                    <label>State</label>
                                    <select class="form-control" required="required" name="state_id">
                                        <option value="" selected="selected">Select State</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4 city">
                                <div class="form-group">
                                    <label>City</label>
                                    <select class="form-control" required="required" name="city_id">
                                        <option value="" selected="selected">Select City</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="university_list">

                        </div>

                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 text-center sk-upload">
                    <div class="ic-login2upload">
                        <a href="#">Login to Upload content</a>
                    </div>
                    <form action="#">
                        <label for="upload">
                            <img src="assets/images/upload.png" alt="">
                        </label>
                        <input id="upload" name="upload" type="file">
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')






    <script>

        jQuery(document).ready(function() {



            $("body").on( "change", "[name='country_id']", function() {
                $(".university_list").html('');
                $("[name='city_id']").html('<option value="">Select City</option>');
                var country_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/country-state',
                    dataType: 'HTML',
                    data: {country_id: country_id},
                    success: function( data ) {
                        $("[name='state_id']").html(data);
                    }
                });
            })

            $("body").on( "change", "[name='state_id']", function() {
                $(".university_list").html('');
                var state_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/state-city',
                    dataType: 'HTML',
                    data: {state_id: state_id},
                    success: function( data ) {
                        $("[name='city_id']").html(data);
                    }
                });
            })

            $("body").on( "change", "[name='city_id']", function() {
                var city_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/university-list',
                    dataType: 'HTML',
                    data: {city_id: city_id},
                    success: function( data ) {
                        $(".university_list").html(data);
                    }
                });
            })







        });

    </script>



@endsection