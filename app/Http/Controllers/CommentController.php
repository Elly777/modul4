<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Article;
use Illuminate\Http\Request;
use Auth;

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
            $comment->user_id = Auth::user()->id;
            $comment->fill($request->all());
            $comment->hidden = $article->categories()->first()->hide_comments;
            $article->comments()->save($comment);
            return redirect('/article/' . $id);
        }
    }
}
