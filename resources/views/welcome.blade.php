<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Headmaster</title>

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

  <!-- Styles -->
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
  crossorigin="anonymous">

</head>
<body>
  <div class="col-md-6  col-md-offset-3"
  <div class="container flex-center position-ref full-height">
    @if (Route::has('login'))
    <div class="top-right links pull-right">
      <a class="button btn-info" href="{{ url('/login') }}">Login</a>
      <a class="button btn-info" href="{{ url('/register') }}">Register</a>
    </div>
    @endif
    <br/>
    <br/>

    <div class="content">
      <div class="jumbotron">
        <h1>Headmaster</h1>
        <p>A budget friendly school administration system for small to medium sized private schools.</p>
      </div>

      <div class="row footer links">
        &copy; MWW Consulting LLC 2016
        <a href="http://www.MWWConsultingLLC.com">www.MWWConsultingLLC.com</a>
        <a href="mailto:Info@MWWConsultingLLC.com">Emai: Info@MWWConsultingLLC.com</a>
        <!-- <a href="https://laravel.com/docs">Documentation</a>
        <a href="https://laracasts.com">Laracasts</a>
        <a href="https://laravel-news.com">News</a>
        <a href="https://forge.laravel.com">Forge</a>
        <a href="https://github.com/laravel/laravel">GitHub</a> -->
      </div>
    </div>
</div>
</div>
</body>
</html>
