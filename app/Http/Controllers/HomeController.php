<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use App\Models\Category;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        $topUsers = User::withCount('comments')->orderBy('comments_count', 'desc')->take(5)->get();
        return view('frontend', ['categories' => $categories, 'topUsers' => $topUsers]);
    }

    public function user($id)
    {
        $user = User::find($id);
        $comments = $user->comments()->paginate(5);
        return view('users', ['user' => $user, 'comments' => $comments]);
    }
    public function search(Request $request)
    {
        if ($q = $request->input('q')) {
            $articles = Article::where('text', 'like', "%$q%")
                ->orWhere('title', 'like', "%$q%")
                ->paginate(7)
                ->appends(['q' => $q])
            ;
            if ($articles->count()) {
                return view('articles', ['articles' => $articles]);
            }
        }

        return view('ooops', ['q' => $q]);
    }
}
