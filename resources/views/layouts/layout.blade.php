<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>@yield('title')</title>

  <!-- Styles -->
  <!-- <link href="/css/app.css" rel="stylesheet"> -->
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
  crossorigin="anonymous">


  <!-- Scripts -->
  <script>
  window.Headmaster = <?php echo json_encode([
    'csrfToken' => csrf_token(),
  ]); ?>
  </script>
</head>
<body>
  <div id="app">
    <div class="container">
      <br/>
      @if(Session::has('flash_message'))
      <div class="alert alert-success">
        {{ Session::get('flash_message') }}
      </div>
      @endif
      <div class="header">
        @include('header')
      </div>  <!-- end       <div class="header"> -->

        @yield('content')

      </div>    <!-- end <div class="container">-->
      </div>      <!-- end <div id="app"> -->
        <!-- Scripts -->
        <script src="/js/app.js"></script>
      </body>
      </html>
