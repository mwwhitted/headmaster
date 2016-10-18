@extends('layouts.layout')

@section('title')
  Create Person
@stop

@section('content')

<h1>Add a New Person</h1>
<p class="lead">Add to your student school below.</p>
<hr>

@if($errors->any())
    <div class="alert alert-danger">
        @foreach($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif

{!! Form::open([
    'route' => 'people.store'
]) !!}

<div class="form-group" id='person'>
  <div class="row">
    {!! Form::label('prefix', 'Prefix:', ['class' => 'control-label']) !!}
    {!! Form::text('prefix', null, ['class' => 'form-control']) !!}
    {!! Form::label('first_name', 'First Name:', ['class' => 'control-label']) !!}
    {!! Form::text('first_name', null, ['class' => 'form-control']) !!}
    {!! Form::label('middle_name', 'Middle Name:', ['class' => 'control-label']) !!}
    {!! Form::text('middle_name', null, ['class' => 'form-control']) !!}
    {!! Form::label('last_name', 'Last Name:', ['class' => 'control-label']) !!}
    {!! Form::text('last_name', null, ['class' => 'form-control']) !!}
    {!! Form::label('suffix', 'Suffix:', ['class' => 'control-label']) !!}
    {!! Form::text('suffix', null, ['class' => 'form-control']) !!}
    {!! Form::label('gender', 'Gender:', ['class' => 'control-label']) !!}
    {!! Form::text('gender', null, ['class' => 'form-control']) !!}
    {!! Form::label('display_name', 'Display Name:', ['class' => 'control-label']) !!}
    {!! Form::text('display_name', null, ['class' => 'form-control']) !!}
</div>
</div>


{!! Form::submit('Create New Person', ['class' => 'btn btn-primary']) !!}

{!! Form::close() !!}

@stop


<!-- $table->date('dob');
$table->string('grade');
$table->string('fed_student_id')->index; -->
