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

// People
// This single route declaration creates multiple routes to handle a variety
//  of RESTful actions on the resource
Route::resource('people', 'PeopleController');
// Route::get('people/create', 'TeachersController@create);   // Form for creating a new person
// Route::post('people', 'TeachersController@store);          // Save the new person
// Route::get('people/{person}/edit', 'TeachersController@edit');     // Edit a single person
// Route::post('people/{person}', 'PeopleController@update');        // Update the edited person
// Route::delete('people/{person}', 'PeopleController@destroy');    // Delete a single person

// Teachers
// This single route declaration creates multiple routes to handle a variety
//  of RESTful actions on the resource
Route::resource('teachers', 'TeachersController');
// Route::get('teachers/create', 'TeachersController@create);   // Form for creating a new teacher
// Route::post('teachers', 'TeachersController@store);          // Save the new teacher
// Route::get('teachers/{teacher}/edit', 'TeachersController@edit');     // Edit a single teacher
// Route::post('teachers/{teacher}', 'TeachersController@update');        // Update the edited teacher
// Route::delete('teachers/{teacher}', 'TeachersController@destroy');    // Delete a single teacher

// Students
// This single route declaration creates multiple routes to handle a variety
//  of RESTful actions on the resource
Route::resource('students', 'StudentsController');
// Route::get('students/create', 'StudentsController@create);   // Form for creating a new student
// Route::post('students', 'StudentsController@store);          // Save the new student
// Route::get('students/{student}/edit', 'StudentsController@edit');     // Edit a single student
// Route::post('students/{student}', 'StudentsController@update');        // Update the edited student
// Route::delete('students/{student}', 'StudentsController@destroy');    // Delete a single student


Route::get('/home', 'HomeController@index');
Route::get('/teacher-selection/index', 'TeacherSelectionController@index');
Route::get('/class-selection/index', 'ClassSelectionController@index');
Route::get('/grade-entry/index', 'GradeEntryController@index');
Route::post('/grade-entry/save', 'GradeEntryController@save');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

//product Resources
/********************* product ***********************************************/
Route::resource('product','\App\Http\Controllers\ProductController');
Route::post('product/{id}/update','\App\Http\Controllers\ProductController@update');
Route::get('product/{id}/delete','\App\Http\Controllers\ProductController@destroy');
Route::get('product/{id}/deleteMsg','\App\Http\Controllers\ProductController@DeleteMsg');
/********************* product ***********************************************/
