<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>Headmaster</title>

  <!-- Styles -->
  <link href="/css/app.css" rel="stylesheet">

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
