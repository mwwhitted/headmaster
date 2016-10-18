@extends('layouts.layout')

@section('title')
  Student
@stop

@section('content')

<h1>{{ $student->display_name }}</h1>
<!-- <p class="lead">{{ $teacher->report_card_name }}</p> -->
<hr>

<div class="row">
    <div class="col-md-6">
        <a href="{{ route('students.index') }}" class="btn btn-info">Back to all students</a>
        <a href="{{ route('students.edit', $student->id) }}" class="btn btn-primary">Edit Student</a>
    </div>
    <div class="col-md-6 text-right">
        {!! Form::open([
            'method' => 'DELETE',
            'route' => ['students.destroy', $student->id]
        ]) !!}
            {!! Form::submit('Delete this student?', ['class' => 'btn btn-danger']) !!}
        {!! Form::close() !!}
    </div>
</div>

@stop
