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
        $article = Article::find($id);
        return view('admin.article', ['article' => $article]);
    }

    public function editArticle($id, Request $request)
    {
        $article = Article::find($id);
        $article->fill($request->all());
        $article->save();
        return redirect('/admin/article/' . $id);


    }
    public function addArticle(Request $request)
    {
        $article = Article::create($request->all());
        $article->save();
        return redirect('/admin/article/' . $article->id);
    }
    public function showFormArticle(){
        return view('admin.formArticle');
    }
}
