@extends('layouts.main')

@section('content')
    <div class="row">
        <h2>User: {{ $user->name }}</h2>
        <div class="col-md-12">
            <table class="table table-stripped">
                @foreach ($comments as $comment)
                    <tr><td>{{ $comment->text }}</td></tr>
                @endforeach
            </table>

            {{ $comments->links() }}
        </div>
    </div>
@endsection