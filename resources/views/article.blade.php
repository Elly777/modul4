@extends('layouts.main')

@section('content')
@if ($article)
    <h1>{{ $article->title }}</h1>
    <div>
        {!! $article->text !!}
    </div>
@if ($article->images->count())
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            @foreach($article->images as $images)
                <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}"{{ $loop->first ? ' class="active"' : '' }}></li>
            @endforeach
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            @foreach($article->images as $image)
                <div class="item {{ $loop->first ? ' active' : '' }}">
                    <img src="{{ $image->path }}"  style="margin:0 auto; width: auto; height: 300px; max-height: 300px;" alt="..."/>
                </div>
            @endforeach
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
 @endif

    <div>
        <span class="article-hits">Hits: {{ $article->hits }}</span>
    </div>
    <div>
        <h3>Comments:</h3>
        @foreach($article->comments()->orderBy('sansara', 'desc')->where('hidden', false)->get() as $comment)
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object img-circle" src="http://lorempixel.com/output/fashion-q-g-64-64-6.jpg" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">{{ $comment->user->name }}</h4>
                    {{ $comment->text }}

                    <div class="text-right">
                        <span class="text-success" id="sansara{{ $comment->id }}">{{ $comment->sansara }}</span>
                        <div class="btn-group btn-group-xs" role="group" aria-label="...">
                            <button class="btn btn-success" onclick="return plusMinus('plus', {{ $comment->id }})">+</button>
                            <button class="btn btn-danger" onclick="return plusMinus('minus', {{ $comment->id }})">-</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        <hr>
        @if (Auth::user())
        <form method="post" action="/article/{{ $article->id }}">
            {{ csrf_field() }}
            <div class="form-group">
                <textarea name="text" rows="3" class="form-control" placeholder="Your comment.."></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="form-control btn btn-info">Comment</button>
            </div>
        </form>
        @endif
    </div>
@endif

<script type="text/javascript">
    hits = parseInt($('.article-hits').first().text().replace('Hits: ', ''));
    setInterval(function () {
        var n = hits + Math.floor(Math.random()*6);
        $('.article-hits').text('Hits: ' + n);
    },3000)
</script>

@endsection