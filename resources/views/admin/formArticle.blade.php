@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/articles">Back</a>
    <form method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            Title: <input name="title" class="form-control" type="text" value=""/>
        </div>
        <div class="form-group">
            Text:
            <textarea name="text" class="form-control" rows="15"></textarea>
        </div>

        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>
    </form>

@endsection