@extends('layouts.app')

@section('content')
    <section class="sk-page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12 text-center sk-upload">
                    <div class="ic-login2upload">
                        Registration Successfull
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')


    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/css/select2.css" />


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








    <script>

        jQuery(document).ready(function() {

            $('.institution2').select2({

                minimumInputLength: 3,
                placeholder: 'Search institution',
                ajax: {
                    url: '/search-institution',
                    dataType: 'json',
                    type: "GET",
                    quietMillis: 50,
                    data: function (term) {
                        return {
                            term: term
                        };
                    },
                    processResults: function (data) {
                        return {
                            results: $.map(data, function (item) {
                                return { id:item.id , text: item.name };
                            })
                        };
                    }
                }
            });

            $("body").on( "change", ".institution2", function() {
                var institution_id = $(this).val();
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/institution-info',
                    dataType: 'HTML',
                    data: {institution_id: institution_id},
                    success: function( data ) {
                        $('.sk-inst-info').html(data);
                    }
                });
            })



            $("body").on( "click", ".title", function() {
                var class_id = $(this).attr('data-id');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/class-subject',
                    dataType: 'HTML',
                    data: {class_id: class_id},
                    success: function( data ) {
                        $('.class_subjects').html(data);
                    }
                });
            })


            $("body").on( "click", ".material_type_title", function() {
                var material_type_id = $(this).attr('data-id');

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: '/material-type-contents',
                    dataType: 'HTML',
                    data: {material_type_id: material_type_id},
                    success: function( data ) {
                        $('.material_type_contents').html(data);
                    }
                });
            })








        });

    </script>



@endsection