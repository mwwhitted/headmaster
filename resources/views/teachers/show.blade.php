@extends('layouts.layout')

@section('title')
  Teacher
@stop

@section('content')

<h1>{{ $teacher->display_name }}</h1>
<p class="lead">{{ $teacher->report_card_name }}</p>
<hr>

<div class="row">
    <div class="col-md-6">
        <a href="{{ route('teachers.index') }}" class="btn btn-info">Back to all teachers</a>
        <a href="{{ route('teachers.edit', $teacher->id) }}" class="btn btn-primary">Edit Teacher</a>
    </div>
    <div class="col-md-6 text-right">
        {!! Form::open([
            'method' => 'DELETE',
            'route' => ['teachers.destroy', $teacher->id]
        ]) !!}
            {!! Form::submit('Delete this teacher?', ['class' => 'btn btn-danger']) !!}
        {!! Form::close() !!}
    </div>
</div>

@stop
