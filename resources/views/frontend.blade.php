@extends('layouts.main')

@section('title', 'Super News')

@section('content')
    @foreach ($categories as $category)
        <div class="row">
            <div class="col-md-12">
                <table class="table table-stripped">
                    <tr><th><a href="/category/{{ $category->id }}">{{ $category->title }}</a></th></tr>
                    @foreach ($category->lastArticles() as $article)
                    <tr><td><a class="text-muted" href="/article/{{ $article->id }}">{{ $article->title }}</a></td></tr>
                    @endforeach
                </table>
            </div>
        </div>
    @endforeach
@endsection

