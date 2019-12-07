<?php


Auth::routes();

Route::get('/', 'HomeController@index');


Route::group(['middleware' => 'auth'], function () {
    Route::get('uploads-content', 'HomeController@uploads_content');
});

Route::get('content-submit', 'HomeController@content_submit');

Route::post('feedback-send', 'HomeController@feedback_send');

Route::get('myaccount', 'HomeController@myaccount');

Route::get('create-class', 'ClassroomController@create_class');
Route::post('store-class', 'ClassroomController@store_class');
Route::get('edit-class/{id}', 'ClassroomController@edit_class');
Route::post('update-class', 'ClassroomController@update_class');
Route::get('classroom', 'ClassroomController@classroom');
Route::get('classroom/{id}', 'ClassroomController@class_detail');
Route::get('teacher/{id}', 'ClassroomController@teacher_profile');

Route::get('edit-profile', 'ClassroomController@edit_profile');
Route::post('update-profile', 'ClassroomController@update_profile');



Route::get('{title}.html', 'HomeController@pages');

Route::get('contents/{id}', 'ContentsController@contents');
Route::get('admission-contents/{id}', 'ContentsController@admission_contents');
Route::get('graduate-contents/{id}', 'ContentsController@graduate_contents');
                       /* skill development*/
Route::get('skill-development/{id}', 'ContentsController@skill_development');
Route::get('skill-development-category/{id}', 'ContentsController@skill_development_category');
                        /*higher study*/
Route::get('higher-study/{id}', 'ContentsController@higher_study');
Route::get('find-univesity', 'SiteController@find_univesity');
Route::get('scholarships', 'SiteController@scholarships');
Route::get('useful-hogher-education', 'SiteController@useful_hogher_education');
Route::get('useful-hogher-education/{id}', 'SiteController@useful_hogher_education_country');
                        /*job*/
Route::get('job-preparation/{id}', 'ContentsController@job_preparation');
Route::get('job-preparation-subject/{id}', 'ContentsController@job_preparation_subject');
Route::get('job-circular', 'SiteController@job_circular');

Route::get('content-detail/{id}', 'HomeController@content_detail');

Route::get('successful-register', 'HomeController@successful_register');

Route::get('blog/{id}', 'SiteController@blog');




                    /*ajax*/


Route::get('search-institution', 'AjaxController@search_institution');
Route::post('institution-department', 'AjaxController@institution_depaerment');
Route::get('search-department', 'AjaxController@search_department');
Route::post('institution-info', 'AjaxController@institution_info');
Route::post('admission-institution-info', 'AjaxController@admission_institution_info');
Route::post('class-subject', 'AjaxController@class_subject');
Route::post('category-subjects', 'AjaxController@category_subjects');
Route::post('material-type-contents', 'AjaxController@material_type_contents');
Route::post('graduate-contents', 'AjaxController@graduate_contents');
Route::post('higher-study-contents', 'AjaxController@higher_study_contents');
Route::post('job-preparation-contents', 'AjaxController@job_preparation_contents');

Route::post('admission-test-contents', 'AjaxController@admission_test_contents');
Route::post('institution-classes', 'AjaxController@institution_classes');

Route::post('job-exam-subjects', 'AjaxController@job_exam_subjects');

Route::post('material-types', 'AjaxController@material_types');
Route::post('higher-job-material-types', 'AjaxController@higher_job_material_types');
Route::post('content-show', 'AjaxController@content_show');

Route::post('country-state', 'AjaxController@country_state');
Route::post('state-city', 'AjaxController@state_city');
Route::post('university-list', 'AjaxController@university_list');


              /*upload ajax*/
Route::post('content-type-content', 'AjaxUploadController@content_type_content');
Route::post('content-section', 'AjaxUploadController@content_section');
Route::post('institution-department-classes', 'AjaxUploadController@institution_depaerment_classes');
Route::post('institution-classes-uploads', 'AjaxUploadController@institution_classes');
Route::post('contents-class-subject', 'AjaxUploadController@class_subject');
Route::post('institute-category-institute-subject', 'AjaxUploadController@institute_category_institute_subject');
Route::post('job-exam-subject', 'AjaxUploadController@job_exam_subject');







// Authentication Routes...
$this->get('login', 'Auth\LoginController@showLoginForm')->name('auth.login');
$this->post('login', 'Auth\LoginController@login')->name('auth.login');
$this->post('logout', 'Auth\LoginController@logout')->name('auth.logout');

// Change Password Routes...
$this->get('change_password', 'Auth\ChangePasswordController@showChangePasswordForm')->name('auth.change_password');
$this->patch('change_password', 'Auth\ChangePasswordController@changePassword')->name('auth.change_password');

// Password Reset Routes...
$this->get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('auth.password.reset');
$this->post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('auth.password.reset');
$this->get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
$this->post('password/reset', 'Auth\ResetPasswordController@reset')->name('auth.password.reset');


