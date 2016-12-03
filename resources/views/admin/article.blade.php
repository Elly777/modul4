@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/articles">Back</a>
    <a class="btn btn-xs" target="_blank" href="/article/{{ $article->id }}">View on site</a>
    <form method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            Title: <input name="title" class="form-control" type="text" value="{{ $article->title }}"/>
        </div>

        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>

        <div class="form-group">
            Text:
            <textarea id="bodyField" name="text" class="form-control" rows="15">{{ $article->text }}</textarea>
            @ckeditor('bodyField')

        </div>

        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>
    </form>

@endsection