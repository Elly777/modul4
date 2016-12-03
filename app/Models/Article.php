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

}
