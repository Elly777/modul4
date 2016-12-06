<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Article;
use App\Models\Category;
use App\Models\Comment;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('moderator');
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
        $article->vip = $request->input('vip', 0);
        $article->save();
        if ($category = Category::find($request->input('category_id'))) {
            $article->categories()->sync([$category->id]);
        }
        return redirect('/admin/article/' . $id);


    }
    public function addArticle(Request $request)
    {
        $article = Article::create($request->all());
        $article->vip = $request->input('vip', 0);
        $article->save();
        return redirect('/admin/article/' . $article->id);
    }
    public function showFormArticle(){
        return view('admin.article', ['article' => new Article, 'categories' => Category::orderBy('title')->get()]);
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
        $category->hide_comments = $request->input('hide_comments', 0);
        $category->save();
        return redirect('/admin/category/' . $id);
    }
    public function addCategory(Request $request)
    {
        $category = Category::create($request->all());
        $category->save();
        return redirect('/admin/category/' . $category->id);
    }
    public function showFormCategory()
    {
        return view('admin.category', ['category' => new Category]);
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

    public function listImages($article_id)
    {
        $images = Article::find($article_id)->images;
        return view('admin.images', ['images' => $images, 'article_id' => $article_id]);
    }
    public function addImage($article_id, Request $request)
    {
        $image = Image::create($request->all());
        $image->path = Storage::url($request->photo->store('public'));
        $image->save();
        Article::find($article_id)->images()->save($image);
        return redirect("/admin/article/{$article_id}/images");
    }
    public function showImage($article_id, $image_id)
    {
        $image= Image::find($image_id);
        return view('admin.image', ['image' => $image, 'article_id' => $article_id]);
    }
    public function editImage($article_id, $image_id, Request $request)
    {
        $image = Image::find($image_id);
        $image->fill($request->all());
        $image->path = Storage::url($request->photo->store('public'));
        $image->save();
        return redirect("/admin/article/{$article_id}/images");
    }
    public function deleteImage($article_id, $image_id)
    {
        $image = Image::find($image_id);
        $image->delete();
        return redirect("/admin/article/{$article_id}/images");
    }
}
