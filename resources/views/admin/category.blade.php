@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/categories">Back</a>
    <form method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            Title: <input name="title" class="form-control" type="text" value="{{ $category->title }}"/>
        </div>

        <div class="checkbox"  style="font-size: 1em;">
            <label>
                <input type="checkbox" value="1" name="hide_comments" {{ $category->hide_comments ? 'checked="checked"' : '' }}> Hide comments
            </label>
        </div>
        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>

    </form>

@endsection