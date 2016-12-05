<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    public function show($id)
    {
        $article = Article::find($id);
        $article->hits++;
        $article->save();

        if ($article->vip && Auth::guest())
        {
            $article->text= strip_tags($article->text);
            $sentences = explode('.', $article->text);
            $text = '';
            $c = 1;
            // перебираем все предложения
            foreach ($sentences as $sentence) {
                $text .= $sentence . '.';
                $c++; // увеличиваем счетчик
                if ($c == 5) { // Если это уже 5-ое предложение, то выходим из цикла
                    break;
                }
            }
            $article->text = $text; // подменяем новым текстом

        }

        return view('article', ['article'=>$article]);
    }

    public function analytics()
    {
        $articles = Article::where('vip', 1)->orderBy('created_at', 'desc')->paginate(5);
        return view('articles', ['articles' => $articles]);
    }
}

