<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use Illuminate\Http\Request;


class CategoryController extends Controller
{
    public function show($id)
    {
        $category = Category::find($id);
        $articles = $category->articles()->orderBy('created_at', 'desc')->paginate(5);
        return view('articles', ['articles' => $articles, 'category' => $category]);
    }

}
