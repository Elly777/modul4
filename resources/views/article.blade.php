@extends('layouts.main')

@section('content')
@if($article)
    <h1>{{ $article->title }}</h1>
    <div>
        {!! $article->text !!}
    </div>
    <div>
        <span class="article-hits">Hits: {{ $article->hits }}</span>
    </div>
    <div>
        <h3>Comments:</h3>
        @foreach($article->comments as $comment)
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
                        <span class="text-success">{{ $comment->sansara }}</span>
                        <div class="btn-group btn-group-xs" role="group" aria-label="...">
                            <button class="btn btn-success">+</button>
                            <button class="btn btn-danger">-</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

    </div>
@endif



@endsection