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

Route::get('/admin', 'AdminController@index');
Route::get('/admin/articles', 'AdminController@listArticles');
Route::get('/admin/article/{id}', 'AdminController@show');
Route::post('/admin/article/{id}', 'AdminController@edit');


Route::get('/test', 'HomeController@test');
Auth::routes();

Route::get('/home', 'HomeController@index');
