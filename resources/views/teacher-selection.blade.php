@extends('layouts.layout')

@section('title')
  Teacher Selection
@stop

@section('content')

<div id=teacher_head>
  <h1>Teacher Selection</h1>
  <p>Please select a teacher.</p>
</div>
<h2 class="">Teacher Name</h2>
<div id="teacher_list">

      @foreach ($teachers as $teacher)
        <div class="table table-striped">
          <a href="/class-selection/index/{{ $teacher->id }}">{{ $teacher->report_card_name }}</a>
          <!-- <a href="/class-selection/index/{{ $teacher->id}}">{{ $teacher->display_name }}</a> -->
        </div>
      @endforeach

@stop
