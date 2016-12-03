@extends('layouts.main')

@section('content')
    {{ $articles->links() }}
    <table class="table table-strip1ped">
        <tr>
            <th>ID</th>
            <th>Title</th>
        </tr>
        @foreach($articles as $article)
            <tr>
            <td>#{{ $article->id }}</td>
            <td><a href="/admin/article/{{ $article->id }}">{{ $article->title }}</a></td>
        </tr>
        @endforeach
    </table>
    {{ $articles->links() }}
@endsection()