@extends('layouts.layout')

@section('title')
  Class Selection
@stop

@section('content')

<div id=class_head>
  <h1>Class Selection</h1>
  <p>Please select a class.</p>
</div>
<div id="class_list">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Class Subject</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href='/grade-entry/index'>Class line</a></td>
      </tr>
    </tbody>
</table>
</div>

@stop
