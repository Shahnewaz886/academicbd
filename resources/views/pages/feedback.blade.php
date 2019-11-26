@extends('layouts.app')

@section('content')
    <section class="container">
        <section class="ic-latest-news-wrapper ic-p">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">

                        <div class="row ic-form-row">
                            <div class="col-md-12">
                                <h2>{{$page->title}}</h2>
                            </div>
                            <form class="col-md-12" action="#">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input type="text" required class="form-control" name="name" id="email" placeholder="Enter Name">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input type="email" required class="form-control" name="email" id="email" placeholder="Enter Email">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input type="text" required name="heading" class="form-control" id="email" placeholder="Enter Heading">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <textarea class="form-control" required name="message" rows="5" id="comment"></textarea>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <div class="modal fade" id="thankyou" tabindex="-1" role="dialog" aria-labelledby="thankyouLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <h3>Thank you</h3>
                                                        {{--<span class="ic-check"><i class="icofont icofont-check-circled"></i></span>
                                                        <span>Registration Successful</span>
                                                        <span>You get a successful mail in your eamil  </span>--}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
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

            $('form').on('submit', function(e) {
                e.preventDefault(); // prevent native submit

                var form = $(this);
                var formdata = false;
                if (window.FormData){
                    formdata = new FormData(form[0]);
                }

                var formAction = form.attr('action');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: '/feedback-send',
                    type: 'POST',
                    data        : formdata,
                    cache       : false,
                    contentType : false,
                    processData : false,
                    success     : function(data, textStatus, jqXHR){
                        $('#thankyou').modal('show');
                    }
                });

            });


        })


    </script>



@endsection