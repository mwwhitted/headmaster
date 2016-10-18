@extends('layouts.layout')

@section('title')
  Teacher List
@stop

@section('content')

<h1>Teachers List</h1>
<p class="lead">Here's a list of all your teachers. <a href="{{ route('teachers.create') }}">Add a new one?</a></p>
<hr>

@foreach($teachers as $teacher)
<h3>{{ $teacher->display_name }}</h3>
<p>{{ $teacher->report_card_name }}</p>
<p>{{ $teacher->gender }}</p>
<p>{{ $teacher->start_date }}</p>
<p>
  <a href="{{ route('teachers.show', $teacher->id) }}" class="btn btn-info">View Teacher</a>
  <a href="{{ route('teachers.edit', $teacher->id) }}" class="btn btn-primary">Edit Teacher</a>
</p>
<hr>
@endforeach

@stop
