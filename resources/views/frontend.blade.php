@extends('layouts.main')

@section('title', 'Super News')

@section('content')

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            @foreach($sliders as $article)
            <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}"{{ $loop->first ? ' class="active"' : '' }}></li>
            @endforeach
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            @foreach($sliders as $article)
                <div class="item {{ $loop->first ? ' active' : '' }}">
                    <a href="/article/{{ $article->id }}">
                        <div style="width: 100%; height: 300px; overflow:hidden;">
                        <img src="{{ $article->images->first()->path }}" width="100%" alt="..."/>
                        </div>
                    <div class="carousel-caption">
                        {{ $article->title }}
                    </div></a>
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

        <div class="row">
            <div class="col-md-12">
                <table class="table table-stripped">
                    <tr><th>Top users</th><th>Comments</th></tr>
                    @foreach ($topUsers as $user)
                        <tr>
                            <td><a class="text-muted" href="/user/{{ $user->id }}">{{ $user->name }}</a></td>
                            <td>{{ $user->comments_count }}</td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
@endsection

