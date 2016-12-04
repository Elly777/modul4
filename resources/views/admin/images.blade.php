@extends('layouts.main')

@section('content')
    <a href="/admin/article/{{ $article_id }}/" xmlns="http://www.w3.org/1999/html">Back to article</a>
    <table class="table table-strip1ped">
        <tr>
            <th>ID</th>
            <th>Text</th>
            <th>Remove</th>
        </tr>
        @foreach($images as $image)
            <tr>
                <td>#{{ $image->id }}</td>
                <td>
                    <img width="60px" height="60px" class="img-rounded" src="{{ asset($image->path) }}" />
                </td>
                <td>
                    <form method="POST" action="/admin/article/{{ $article_id }}}/image/{{ $image->id }}">
                        {{ csrf_field() }}
                        {{ method_field('DELETE') }}
                        <button class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button>
                    </form>
                </td>
            </tr>
        @endforeach
    </table>
    <p>New photo:</p>
    <form method="POST" action="/admin/article/{{ $article_id }}/images" class="form-inline" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
            <input type="file" name="photo" class="form-control" />
            <button class="btn btn-info">Add</button>
        </div>
    </form>
@endsection()