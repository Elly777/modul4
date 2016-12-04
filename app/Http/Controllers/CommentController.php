<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Article;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function sansara($id, $plusMinus)
    {
        // $i = ($plusMinus == 'minus' ? -1 : 1);
        // $sansara = $sansara + $i;
        $comment = Comment::find($id);
        $comment->sansara += ($plusMinus == 'minus' ? -1 : 1);
        $comment->save();
        return 'ok';
    }

    public function comment($id, Request $request)
    {
        if (Auth::user()) {
            $article = Article::find($id);
            $comment = new Comment;
            $comment->user_id = 2;
            $comment->fill($request->all());
            $article->comments()->save($comment);
        }
    }
}
