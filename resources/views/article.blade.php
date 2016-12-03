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
@endif



@endsection