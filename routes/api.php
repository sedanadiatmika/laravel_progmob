<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::post('/login','api\login@index');
Route::post('/register','api\register@index');
Route::get('/login',function (){
    return "gagal";
});



Route::group(['middleware' => 'auth:api'], function(){
    Route::post('/uji','api\register@cobak');
    Route::prefix('user')->group(function(){
        Route::post('/read','api\userController@read');
        Route::post('/edit','api\userController@edit');

    });
    
});
