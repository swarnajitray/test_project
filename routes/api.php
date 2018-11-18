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
Route::post('token', 'apis\PassportController@tokenGeneration');
Route::post('login', 'apis\PassportController@login');
Route::get('validateToken', 'apis\PassportController@validateToken');


//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::group(['middleware' => 'auth:api'], function () {
   Route::post('/userDetails', 'apis\api_1_0_0\UserController@userDetails')->name('userDetails');
   Route::post('/addPlayer', 'apis\api_1_0_0\UserController@addPlayer')->name('addPlayer');
   Route::post('/listPlayer', 'apis\api_1_0_0\UserController@listPlayer')->name('listPlayer');
   Route::post('/profileDetails', 'apis\api_1_0_0\UserController@profileDetails')->name('profileDetails');
   Route::post('/deleteProfile', 'apis\api_1_0_0\UserController@deleteProfile')->name('deleteProfile'); 
   Route::get('userLogout', 'apis\PassportController@userLogout');
   
//   Route::post('/contactus', 'apis\v1\Managecontent@contactus')->name('contactus');
//   Route::post('/forgetpassword', 'apis\v1\ManageLogin@forgetpasswordstepone')->name('forgetpassword');
//   Route::post('/authenticatersetpasswordkey', 'apis\v1\ManageLogin@authenticatersetpasswordkey')->name('authenticatersetpasswordkey');
//   Route::post('/resetpassword', 'apis\v1\ManageLogin@forgetpasswordsteptwo')->name('resetpassword');
//   Route::post('/requestForForgetPassword', 'apis\v1\ManageLogin@requestForForgetPassword')->name('requestForForgetPassword');
//   Route::post('/homecontent', 'apis\v1\Managecontent@homecontent')->name('homecontent');
//   Route::post('/userLogout', 'apis\v1\ManageLogin@userLogout')->name('userLogout');
//   Route::post('/footer', 'apis\v1\Managecontent@footer')->name('footer');

  
});
