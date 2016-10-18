@extends('layouts.layout')

@section('title')
  Create Teacher
@stop

@section('content')

<h1>Add a New Teacher</h1>
<p class="lead">Add teacher to your school below.</p>
<hr>

@if($errors->any())
    <div class="alert alert-danger">
        @foreach($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif

{!! Form::open([
    'route' => 'teachers.store'
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

<div class="form-group" id='teacher'>
  <div class="row">
    {!! Form::label('report_card_name', 'Report Card Name:', ['class' => 'control-label']) !!}
    {!! Form::text('report_card_name', null, ['class' => 'form-control']) !!}
    {!! Form::label('start_dat', 'Start Date:', ['class' => 'control-label']) !!}
    {!! Form::date('start_dat', null, ['class' => 'form-control']) !!}
    {!! Form::label('person_id', 'person_id:', ['class' => 'control-label']) !!}
    {!! Form::number('person_id', null, ['class' => 'form-control']) !!}
</div>
</div>

{!! Form::submit('Create New Teacher', ['class' => 'btn btn-primary']) !!}

{!! Form::close() !!}

@stop


<!-- $table->string('first_name')->nullable();
$table->string('middle_name')->nullable();
$table->string('last_name');
$table->string('prefix')->nullable();
$table->string('suffix')->nullable();
$table->string('gender');
$table->string('display_name'); -->
