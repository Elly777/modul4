@extends('layouts.main')

@section('content')
    <a href="/admin/category">Create</a>
    {{ $categories->links() }}
    <table class="table table-strip1ped">
        <tr>
            <th>ID</th>
            <th>Title</th>
        </tr>
        @foreach($categories as $category)
            <tr>
                <td>#{{ $category->id }}</td>
                <td><a href="/admin/category/{{ $category->id }}">{{ $category->title }}</a></td>
            </tr>
        @endforeach
    </table>
    {{ $categories->links() }}
@endsection()