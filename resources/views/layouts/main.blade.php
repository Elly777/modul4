
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
                <li><a href="/articles">News</a></li>
                <li><a href="/categories">Categories</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="{{ url('/login') }}">Login</a></li>
                <li><a href="{{ url('/register') }}">Register</a></li>
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

</body>
</html>