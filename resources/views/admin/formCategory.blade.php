@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/categories">Back</a>
    <form method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            Title: <input name="title" class="form-control" type="text" value=""/>
        </div>

        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>

        <div class="checkbox">
            <label>
                <input type="checkbox" name="hide_comments"> Hide comments
            </label>
        </div>
    </form>

@endsection