<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

// echo "$request->all";

Route::get('/home', 'HomeController@index');
Route::get('/teacher-selection/index', 'TeacherSelectionController@index');
Route::get('/class-selection/index', 'ClassSelectionController@index');
Route::get('/grade-entry/index', 'GradeEntryController@index');
Route::post('/grade-entry/save', 'GradeEntryController@save');
