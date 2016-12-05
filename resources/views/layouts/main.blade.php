<!DOCTYPE html>
<html>
<head>
    <title>@yield('title', 'Deafult title')</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/readable/bootstrap.min.css" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<style type="text/css">
    .content { font-size: 1.5em; }
</style>
<body>
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        Categories <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        @foreach ($menu as $item)
                            <li><a href="/category/{{ $item->id }}">{{ $item->title }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li><a href="/analytics">Analytics</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
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
<div class="container">

    <div class="row">
        <div class="sidebar-left">
            <div class="col-md-2">
                <em class="text-muted">Ad Block</em>
            </div>
        </div>
        <div class="main">
            <div class="col-md-8">
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="/search">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="q" placeholder="Search for...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                        </button>
                                    </span>
                                </div><!-- /input-group -->
                            </form>
                        </div><!-- /.col-lg-6 -->
                    </div>
                    @if (session('notify'))
                        <div class="alert alert-success">
                            {{ session('notify') }}
                        </div>
                    @endif



                    @yield('content')

                </div>
            </div>
        </div>
        <div class="sidebar-right">
            <div class="col-md-2">
                <em class="text-muted">Ad Block</em>
            </div>
        </div>
    </div>
</div>
<div class="modal" class="modal hide fade" id="modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2>News</h2>
            </div>
            <div class="modal-body">
                <center>
                    <p>Do you want to be always in the middle of it?</p>
                    <p>Subscribe to the newsletter now!</p>
                </center>
                <center>
                    <form method="POST" id="scf-form" action="/subscribe">
                        {{ csrf_field() }}
                        <p><input type="text" name="name" class="form-control" placeholder="Your Name" /></p>
                        <p><input type="email" name="email" class="form-control" placeholder="Your E-mail" /></p>
                        <p><button class="btn btn-info" type="submit">Subscribe</button></p>
                    </form>
                </center>
            </div>
        </div>
    </div>
</div>
<div class="modal" class="modal hide fade" id="modal_1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <center>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2>Do you really want to leave the site?</h2>
                <p><input id="submit" type="submit" value="Close" name="Close" /></p>
                </center>
            </div>
        </div>
    </div>
</div>
<script src="/js/script.js"></script>
</body>
</html>