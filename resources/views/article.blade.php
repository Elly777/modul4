@extends('layouts.main')

@section('content')
@if ($article)
    <h1>{{ $article->title }}</h1>
    <div>
        {!! $article->text !!}
    </div>
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



@endsection