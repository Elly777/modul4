<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function articles()
    {
        return $this->belongsToMany('App\\Models\\Article');
    }

    public function lastArticles($count = 5)
    {
        return $this->articles()->take($count)->orderBy('created_at', 'desc')->get();
    }
}
