@extends('layouts.main')

@section('content')
    <a href="/admin/comments">Create</a>
    {{ $comments->links() }}
    <table class="table table-strip1ped">
        <tr>
            <th>ID</th>
            <th>Text</th>
            <th>Hidden</th>
        </tr>
        @foreach($comments as $comment)
            <tr>
                <td>#{{ $comment->id }}</td>
                <td><a href="/admin/comment/{{ $comment->id }}">{{ $comment->text }}</a></td>
                <td>{{ $comment->hidden ? 'Yes': '' }}</td>
            </tr>
        @endforeach
    </table>
    {{ $comments->links() }}
@endsection()