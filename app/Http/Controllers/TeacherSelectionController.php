<?php

namespace App\Http\Controllers;

use \App\Teacher;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class TeacherSelectionController extends Controller
{
  /**
  * Create a new controller instance.
  *
  * @return void
  */
  public function __construct()
  {
    $this->middleware('auth');
  }

  /**
  * Show the application dashboard.
  *
  * @return \Illuminate\Http\Response
  */
  public function index() {

    $teachers = Teacher::all();

    return view('teacher-selection', compact('teachers'));

  }

  public function show(Card $teacher) {

    $card->load('Teachers.display_name');

    return view('teacher-selection', compact('teacher'));
  }
}
