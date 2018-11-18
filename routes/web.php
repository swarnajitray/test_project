<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/abcd', 'TestController@test');

Route::group(['middleware' => 'auth', 'prefix' => 'admin'], function() {
    Route::get('/playerlist', 'player\PlayerController@index');
    Route::get('/addplayer/{id?}', 'player\PlayerController@add_edit');
    Route::post('/store/', 'player\PlayerController@store');
    Route::get('/editpost/{id}', 'player\PlayerController@edit');
    Route::post('/updateplayer/{id?}', 'player\PlayerController@update');
    Route::get('/deleteplayer/{id?}', 'player\PlayerController@delete');
    Route::get('/abcd', 'TestController@test');
    Route::get('/OnetoOne/{id}', 'player\PlayerController@OnetoOne');
    Route::get('/Inverse/{id}', 'player\PlayerController@Inverse_OnetoOne');
    Route::get('/ManytoMany/{id}', 'player\PlayerController@ManytoMany');
    Route::get('/EagerLoading/{id}', 'player\PlayerController@EagerLoading');
    Route::get('/InUpRelatedModels/{id?}', 'player\PlayerController@InUpRelatedModels');
    Route::get('/Belongsto/{id?}', 'player\PlayerController@belongsto');
    Route::get('/attach/{id?}', 'player\PlayerController@attach');
    //Route::get('/MiddleWare', 'player\PlayerController@MiddleWarepage');
    Route::get('/MiddleWare', function() {
        return view('admin.middleware');
    });
});

//use App\Http\Middleware\CheckAge;
Route::post('admin/checkMiddleWare', function () {
    return redirect('admin/MiddleWare')->with('message','You Age is more than 18');;
    //return view('admin.middleware'); 
})->middleware('CheckAge','auth');
//N.B this Checkage define inside Kernel.php


Route::any('/tested', function(){
	echo 'hi';
});