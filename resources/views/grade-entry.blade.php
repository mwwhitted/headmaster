@extends('layouts.layout')

@section('title')
  Grade Entry
@stop

@section('content')

<div id=student_head>
  <h1>Grade Entry</h1>
  <h2>Teacher Name</h2>
  <h2>Class</h2>
  <p>
    Please enter grades below and press the
    <button type="submit" class="btn btn-primary">Save grades</button>
    button at the bottom of the page.
  </p>
</div>
<!-- end id=student_head> -->

<div id="student_list">

  <form class="form-inline"
  action='/grade-entry/save'
  method="post">

  {{ csrf_field() }}

  <input name="_token" type="hidden" value="{!! csrf_token() !!}" />




  <table class="table">
    <thead>
      <tr>
        <th>Student Name</th>
        <th>Academic Grade</th>
        <th>Citizenship Grade</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          Christopher Whitted
        </td>
        <td>
          <input type="text"
          class="form-control"
          id="grade-1"
          placeholder="0-100">
        </td>
        <td>
          <input type="radio"
          name="citz-1"
          value="excep">Exceptional
          <input type="radio"
          name="citz-1"
          value="satis"
          checked>Satisfactory
          <input type="radio"
          name="citz-1"
          value="unsatis">Unsatifactory
        </td>
      </tr>
      <tr>
        <td>
          Ke Xu
        </td>
        <td>
          <input type="text"
          class="form-control"
          id="grade-2"
          placeholder="0-100">
        </td>
        <td>
          <input type="radio"
          name="citz-2"
          value="excep">Exceptional
          <input type="radio"
          name="citz-2"
          value="satis"
          checked>Satisfactory
          <input type="radio"
          name="citz-2"
          value="unsatis">Unsatifactory
        </td>
      </tr>
    </tbody>
  </table>
  <button type="submit"
  class="btn btn-primary">Save grades</button>
</form>


</div>
<!-- end <div name="student_list"> -->

@stop
