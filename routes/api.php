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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('attendance/punch/in/{user}','AttendanceController@punchIn')->name('punch.in');
Route::post('attendance/punch/out/{attendance}','AttendanceController@punchOut')->name('punch.out');
Route::get('attendance/status/{user}','AttendanceController@punchStatus')->name('punch.status');
Route::apiResource('attendance','AttendanceController');
