<?php

//Auth::loginUsingId(1); //changes quick auth id

Route::get('/', function () {
//    return view('welcome');
    return redirect('home');
});

Auth::routes();
Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users/verify/{token}', 'UserController@verify')->name('verify');
Route::resource('/users', 'UserController');
Route::resource('/roles', 'RoleController');
Route::resource('/permissions', 'PermissionController');

Route::get('/post/publish', 'PostController@publishPost')->name('posts.publish');
Route::get('/post/unpublish', 'PostController@unpublishPost')->name('posts.unpublish');
Route::resource('/posts', 'PostController');
Route::resource('/tasks', 'TaskController');
Route::resource('/charts', 'ChartController');

Route::get('/locale/{locale}', function ($locale) {
     Session::put('locale', $locale);
    return redirect()->back()->with('success', 'Language changed');
})->name('locale');


Route::resource('file','FileController',['only' => ['index', 'store']]);
Route::resource('user.attendance','AttendanceController',['only' => ['store', 'update']]);

Route::group(['middleware' => ['web', 'auth']], function () {

    Route::resource('/document', 'DocumentController');
    Route::resource('/lesson', 'LessonController');
});
