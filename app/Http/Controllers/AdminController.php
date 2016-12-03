<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.frontend');
    }

    public function listArticles()
    {
        $articles = Article::orderBy('created_at', 'desc')->paginate(10);
        return view('admin.articles', ['articles' => $articles]);
    }

    public function showArticle($id)
    {
        $articles = Article::find($id);
    }

    public function edit($id)
    {

    }
}
