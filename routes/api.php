<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');

//get the profile data

Route::get('/profile/{id}','ProfileController@get_profile')->middleware('auth:api');
Route::get('test','ApiController@get_test');
Route::post('save_profile','ProfileController@save_profile');

// user registration

Route::post('new_user','ApiController@new_user');

//user authenticate

Route::post('auth','ApiController@authenticate');



Route::get('get_tasks/{type}/{status}','ApiController@get_tasks');


Route::post('new_duty','ApiController@new_duty');

//get specialities

Route::get('get_especialities','ApiController@getSpecialities');

//get all duties

Route::get('get_duties/{limit}','ApiController@getDuties');


//save image

Route::post('save_image','ApiController@saveImage');

// task detail

Route::get('get_duty/{id}','ApiController@get_duty');

// new comment

Route::post('new_comment','ApiController@new_comment');

//get states

Route::get('get_states','ApiController@get_states');

// check user's' payment info

Route::get('check_payment/{user_id}','ApiController@check_payment'); 

// save payment info

Route::post('save_payment_info','ApiController@save_payment_info');

// save offer

Route::post('save_offer','ApiController@save_offer');

// get offer

Route::get('get_offer/{offer_id}','ApiController@get_offer');

// get post for a user

Route::get('get_my_duties/{user_id}','ApiController@get_my_duties');

// get duties for a user

Route::get('get_my_duties_own/{user_id}','ApiController@get_my_own_duties');

//get reviews

Route::get('get_reviews/{user_id}','ApiController@get_reviews');

//get profile info

Route::get('get_profile_info/{profile_id}','ApiController@profile_info');

//save profile info

Route::post('save_profile/{profile_id}','ApiController@save_profile');

//save avatar 

Route::post('save_avatar/{profile_id}','ApiController@upload');

//save skill

Route::post('save_skills/{profile_id}','ApiController@saveSkill');

//delete Skill

Route::post('delete_skill/{profile_id}','ApiController@deleteSkill');

//check fb user

Route::post('check_fb_user','ApiController@checkFbUser');

//get offers with a duty id

Route::get('get_offers/{id_duty}/{id_status}','ApiController@get_offers');

// change a duty status with a message
Route::post('change_duty_status','ApiController@change_status');

// change a duty status reject with a message
Route::post('change_duty_status_reject','ApiController@change_status_reject');

//save task review

Route::post('save_review','ApiController@save_review');

//report an user

Route::post('report_user','ApiController@report_user');

//change profile pic

Route::post('change_profile_pic','ApiController@changePic');

Route::get('get_profiles','ApiController@getProfiles');



// for easy move api for quotes

Route::get('easy_get_quote','ApiController@getEasyQuote');


