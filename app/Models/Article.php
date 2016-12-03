<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Article extends Model
{
    public function categories()
    {
        return $this->belongsToMany('App\\Models\\Category');
    }

}
