<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Student;
use App\Person;
Use Session;

class StudentsController extends Controller
{
  /**
  * Display a listing of the resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function index()
  {
    $students = Student::all();

    return view('students.index')->withStudents($students);
  }

  /**
  * Show the form for creating a new resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function create()
  {
    return view('students.create');
  }

  /**
  * Store a newly created resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @return \Illuminate\Http\Response
  */
  public function store(Request $request)
  {
    $this->validate($request, [
      'first_name' => 'required',
      'last_name' => 'required',
      'gender' => 'required',
      'gender' => 'in:M,F',

      'grade' => 'required',
      'grade' => 'in:PK3,PK4,K5,K6,1,2,3,4,5,6,7,8,9,10,11,12',
      // 'dob' => 'required',
      'person_id' => 'required',
    ]);

    //   if ($request.foreign_student) {
    //   $this->validate($request, [
    //     'fed_student_id => 'required',
    //   ]);
    // };


    $input = $request->all();

    Person::create($input);
    Student::create($input);

    Session::flash('flash_message', 'Student successfully added!');

    return redirect()->back();

  }

  /**
  * Display the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function show($id)
  {
    $student = Student::findOrFail($id);
    dd($student);

    return view('students.show')->withStudent($student);
  }

  /**
  * Show the form for editing the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function edit($id)
  {
    //
  }

  /**
  * Update the specified resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function update(Request $request, $id)
  {
    //
  }

  /**
  * Remove the specified resource from storage.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function destroy($id)
  {
    //
  }
}
