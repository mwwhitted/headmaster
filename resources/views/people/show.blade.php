@extends('layouts.layout')

@section('title')
  Person
@stop

@section('content')

<h1>{{ $person->display_name }}</h1>
<!-- <p class="lead">{{ $teacher->report_card_name }}</p> -->
<hr>

<div class="row">
    <div class="col-md-6">
        <a href="{{ route('people.index') }}" class="btn btn-info">Back to all people</a>
        <a href="{{ route('people.edit', $persont->id) }}" class="btn btn-primary">Edit Person</a>
    </div>
    <div class="col-md-6 text-right">
        {!! Form::open([
            'method' => 'DELETE',
            'route' => ['people.destroy', $person->id]
        ]) !!}
            {!! Form::submit('Delete this person?', ['class' => 'btn btn-danger']) !!}
        {!! Form::close() !!}
    </div>
</div>

@stop
