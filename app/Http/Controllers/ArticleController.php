<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function show($id)
    {
        $article = Article::find($id);
        $article->hits++;
        $article->save();
        return view('article', ['article'=>$article]);
    }
}
