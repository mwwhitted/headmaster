@extends('layouts.layout')

@section('content')

<div id=teacher_head>
  <h1>Teacher Selection</h1>
  <p>Please select a teacher.</p>
</div>
<div id="teacher_list">
  <table class="table">
    <thead>
      <tr>
        <th>Teacher Name</th>
      </tr>
    </thead>
    <tbody>

<?php //var_dump($teachers[1]); ?>

      @foreach ($teachers as $teacher)
      <?php //echo "$teacher"; ?>
      <tr>
        <!-- {{ $teacher->id }} -->
        <div id="tr">
          <a href="/class-selection/index/{{ $teacher->id }}">{{ $teacher->report_card_name }}</a>
          <!-- <a href="/class-selection/index/{{ $teacher->id}}">{{ $teacher->display_name }}</a> -->
        </div>
      </tr>
      @endforeach

    </tbody>
  </table>
</div>

@stop
