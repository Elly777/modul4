<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', 'HomeController@index');
Route::get('/category/{id}', 'CategoryController@show');
Route::get('/article/{id}', 'ArticleController@show');
Route::get('/analytics', 'ArticleController@analytics');

Route::post('/article/{id}', 'CommentController@comment');
Route::get('/search', 'HomeController@search');
Route::get('/admin', 'AdminController@index');

Route::get('/admin/articles', 'AdminController@listArticles');
Route::get('/admin/article/{id}', 'AdminController@showArticle');
Route::post('/admin/article/{id}', 'AdminController@editArticle');
Route::get('/admin/article', 'AdminController@showFormArticle');
Route::post('/admin/article', 'AdminController@addArticle');

Route::get('/admin/categories', 'AdminController@listCategories');
Route::get('/admin/category/{id}', 'AdminController@showCategory');
Route::post('/admin/category/{id}', 'AdminController@editCategory');
Route::get('/admin/category', 'AdminController@showFormCategory');
Route::post('/admin/category', 'AdminController@addCategory');

Route::get('/admin/comments', 'AdminController@listComments');
Route::get('/admin/comment/{id}', 'AdminController@showComment');
Route::post('/admin/comment/{id}', 'AdminController@editComment');

Route::get('/admin/article/{article_id}/images', 'AdminController@listImages');
Route::post('/admin/article/{article_id}/images', 'AdminController@addImage');
Route::get('/admin/article/{article_id}/image/{id}', 'AdminController@showImage');
Route::post('/admin/article/{article_id}/image/{id}', 'AdminController@editImage');
Route::delete('/admin/article/{article_id}/image/{id}', 'AdminController@deleteImage');

Route::post('/subscribe', 'SubscriberController@subscribe');

Route::get('/user/{id}', 'HomeController@user');
Route::get('/sansara/{id}/{plusMinus}', 'CommentController@sansara');


Route::get('/test', 'HomeController@test');
Auth::routes();

Route::get('/home', 'HomeController@index');

