@extends('layouts.layout')

@section('title')
  Student List
@stop

@section('content')

<h1>Students List</h1>
<p class="lead">Here's a list of all your students. <a href="{{ route('students.create') }}">Add a new one?</a></p>
<hr>

@foreach($students as $student)
<h3>{{ $student->display_name }}</h3>
<p>{{ $student->gender }}</p>
<p>{{ $student->dob }}</p>
<p>
  <a href="{{ route('students.show', $student->id) }}" class="btn btn-info">View Student</a>
  <a href="{{ route('students.edit', $student->id) }}" class="btn btn-primary">Edit Student</a>
</p>
<hr>
@endforeach

@stop
