<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Article extends Model
{
    protected $fillable = ['title', 'text'];

    public function categories()
    {
        return $this->belongsToMany('App\\Models\\Category');
    }
    public function comments()
    {
        return $this->hasMany('App\\Models\\Comment');
    }

    public function images()
    {
        return $this->hasMany('App\\Models\\Image');
    }


}
