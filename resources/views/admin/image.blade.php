@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/article/{{ $article_id }}/images">Back</a>
    <form method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
            <img class="img-thumbnail" src="{{ asset($image->path) }}"/>
        </div>

        <div class="form-group">
            <input type="file" class="form-control"/>
        </div>

        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>

    </form>

@endsection