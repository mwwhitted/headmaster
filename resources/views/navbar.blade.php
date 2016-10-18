<nav class="navbar navbar-default navbar-static-top">
  <div class="container">
    <div class="navbar-header">

      <!-- Collapsed Hamburger -->
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <!-- Branding Image -->
      <a class="navbar-brand" href="{{ url('/') }}">
        {{ config('app.name', 'Headmaster') }}
      </a>
    </div>

    <div class="collapse navbar-collapse" id="app-navbar-collapse">
      <!-- Left Side Of Navbar -->
      <ul class="nav navbar-nav">
        &nbsp;
      </ul>
      <!-- Left Side Of Navbar -->
        <ul class="nav navbar-nav navbar-left">
        <!-- Authentication Links -->
        @if (Auth::guest())

        @else
        <li class="active"><a href="/">Home</a></li>
        <li><a href='/teacher-selection/index'>Grade Entry</a></li>
        <li><a href='?controller=nav&action=report_cards'>Report Cards</a></li>
        <!-- <li><a href='?controller=nav&action=table_maintenance'>Table Maintenance</a></li> -->
        <li class="dropdown">
                  <a href=href='?controller=nav&action=table_maintenance'
                    class="dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false">Table Maintenance <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="/people">Person</a></li>
                    <li><a href="/teachers">Teacher</a></li>
                    <li><a href="/students">Student</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Subject</a></li>
                    <!-- <li><a href="/subjects">Subject</a></li> -->
                    <li><a href="#">Class</a></li>
                    <!-- <li><a href="/classes">Class</a></li> -->
                    <li role="separator" class="divider"></li>
                    <li><a href="#">School Year</a></li>
                    <!-- <li><a href="/school_years">School Year</a></li> -->
                  </ul>
                </li>
        @endif
      </ul>

      <!-- Right Side Of Navbar -->
      <!-- <button type="submit" class="btn btn-primary "><span class="glyphicon glyphicon-search" aria-hidden="true"></span>Back</button> -->
      <ul class="nav navbar-nav navbar-right pull-right">

        <!-- Authentication Links -->
        @if (Auth::guest())
        <li><a href="{{ url('/login') }}">Login</a></li>
        <li><a href="{{ url('/register') }}">Register</a></li>
        @else
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            {{ Auth::user()->name }} <span class="caret"></span>
          </a>

          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="{{ url('/logout') }}"
              onclick="event.preventDefault();
              document.getElementById('logout-form').submit();">
              Logout
            </a>

            <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
              {{ csrf_field() }}
            </form>
          </li>
        </ul>
      </li>
      @endif
    </ul>
  </div>
</div>
</nav>
