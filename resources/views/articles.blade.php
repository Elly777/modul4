@extends('layouts.main')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <table class="table table-stripped">
                @if (isset($category))
                <tr><th>{{ $category->title }}</th></tr>
                @endif
                @foreach ($articles as $article)
                    <tr><td><a class="text-muted" href="/article/{{ $article->id }}">{{ $article->title }}</a></td></tr>
                @endforeach
            </table>

            {{ $articles->links() }}
        </div>
    </div>
@endsection