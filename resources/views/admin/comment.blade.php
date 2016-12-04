@extends('layouts.main')

@section('content')
    <a class="btn btn-xs" href="/admin/comments">Back</a>
    <form method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            Text: <input name="text" class="form-control" type="text" value="{{ $comment->text }}"/>
        </div>

        <div class="checkbox"  style="font-size: 1em;">
            <label>
                <input type="checkbox" value="1" name="hidden" {{ $comment->hidden ? 'checked="checked"' : '' }}> Hidden
            </label>
        </div>
        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>

    </form>

@endsection