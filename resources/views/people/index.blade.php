@extends('layouts.layout')

@section('title')
  People List
@stop

@section('content')

<h1>People List</h1>
<p class="lead">Here's a list of all your people. <a href="{{ route('people.create') }}">Add a new one?</a></p>
<hr>

@foreach($people as $person)
    <h3>{{ $person->display_name }}</h3>
    <p>{{ $person->gender }}</p>
    <p>
        <a href="{{ route('people.show', $person->id) }}" class="btn btn-info">View Person</a>
        <a href="{{ route('people.edit', $person->id) }}" class="btn btn-primary">Edit Person</a>
    </p>
    <hr>
@endforeach

@stop
