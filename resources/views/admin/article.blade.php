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
            <select name="category_id" class="form-control">
                <option value="">Not selected</option>
                @foreach ($categories as $category)
                    @if ($article->categories()->first() && $category->id == $article->categories()->first()->id)
                        <option selected="true" value="{{ $category->id }}">{{ $category->title }}</option>
                    @else
                    <option value="{{ $category->id }}">{{ $category->title }}</option>
                    @endif
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <a href="/admin/article/{{ $article->id }}/images" target="__blank">View images</a>
        </div>
        <div class="checkbox"  style="font-size: 1em;">
            <label>
                <input type="checkbox" value="1" name="vip" {{ $article->vip ? 'checked="checked"' : '' }}> VIP (Analytics)
            </label>
        </div>
        <div class="form-group">
            <button type="submit" class="form-control btn btn-info" >Save</button>
        </div>
    </form>

@endsection