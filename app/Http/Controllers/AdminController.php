<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Models\Comment;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

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
        $categories = Category::orderBy('title')->get();
        return view('admin.article', ['article' => $article, 'categories' => $categories]);
    }

    public function editArticle($id, Request $request)
    {
        $article = Article::find($id);
        $article->fill($request->all());
        $article->save();
        if ($category = Category::find($request->input('category_id'))) {
            $article->categories()->sync([$category->id]);
        }
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

    //For categories//

    public function listCategories()
    {
        $categories = Category::orderBy('created_at', 'desc')->paginate(10);
        return view('admin.categories', ['categories' => $categories]);
    }

    public function showCategory($id)
    {
        $category = Category::find($id);
        return view('admin.category', ['category' => $category]);
    }

    public function editCategory($id, Request $request)
    {
        $category = Category::find($id);
        $category->fill($request->all());
        $category->save();
        return redirect('/admin/category/' . $id);
    }
    public function showFormCategory(Request $request)
    {
        $category = Category::create($request->all());
        $category->save();
        return redirect('/admin/category/' . $category->id);
    }
    public function addCategory()
    {
        return view('admin.formCategory');
    }

    public function listComments()
    {
        $comments = Comment::orderBy('created_at', 'desc')->paginate(30);
        return view('admin.comments', ['comments' => $comments]);
    }

    public function showComment($id)
    {
        $comment= Comment::find($id);
        return view('admin.comment', ['comment' => $comment]);
    }

    public function editComment($id, Request $request)
    {
        $comment = Comment::find($id);
        $comment->fill($request->all());
        $comment->hidden = $request->input('hidden', 0);
        $comment->save();
        return redirect('/admin/comment/' . $id);
    }
    public function showFormComment()
    {
        return view('admin.formComment');
    }

}
