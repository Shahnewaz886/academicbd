@extends('layouts.app')

@section('content')
    <section class="sk-page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 skpl">
                    <div class="sk-left-contant text-center">
                        <div class="sk-logo padding-both">
                            <a href="#"><img src="assets/images/icons/2-6.png" alt="Institution logo"></a>
                            <h2>School &amp; College</h2>
                        </div>
                        <div class="sk-inst padding-both">
                            <form action="#" id="sk-select-inst">
                                <select name="skinst" id="sk_inst">
                                    <option value="select your institution">Select your institution</option>
                                    <option value="School &amp; College">School &amp; College</option>
                                    <option value="Madrassah">Madrassah</option>
                                    <option value="English Medium">English Medium</option>
                                    <option value="English version">English version</option>
                                    <option value="Qawmi">Qawmi</option>
                                </select>
                                <button type="submit"><i class="icofont icofont-search-alt-2"></i></button>
                            </form>
                        </div>
                        <div class="sk-inst-info">
                            <img src="assets/images/icons/logo.png" alt="Institution Logo">
                            <h3>Bhola Govt. High school</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 sk-right-content skpr">
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
                    <div class="sk-table table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>
                            <tr>
                                <td>Class one</td>
                                <td>Class two</td>
                                <td>Class three</td>
                                <td>Class Four</td>
                                <td>PEC</td>
                            </tr>
                            <tr>
                                <td>Class Six</td>
                                <td>Class Seven</td>
                                <td>JSC</td>
                                <td>SSC</td>
                                <td>JSC</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="sk-table table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>
                            <tr>
                                <td>আমার  বাংলা বই</td>
                                <td>English for today</td>
                                <td>প্রাথমিক গণিত</td>
                                <td>বাংলাদেশ ও বিশ্ব পরিচয়</td>
                                <td>প্রাথমিক বিজ্ঞান</td>
                            </tr>
                            <tr>
                                <td>ইসলাম ও নৈতিক শিক্ষা</td>
                                <td>Extra 1</td>
                                <td>Extra 1</td>
                                <td>Extra 1</td>
                                <td>Extra 1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="sk-table table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>
                            <tr>
                                <td>Lecture</td>
                                <td>Text books</td>
                                <td>Model Question</td>
                                <td>Previous Question &amp; Answer</td>
                                <td>Extra 1</td>
                            </tr>
                            </tbody>
                        </table>
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