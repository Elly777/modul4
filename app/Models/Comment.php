<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = ['text'];
    public function article()
    {
        return $this->belongsTo('App\\Models\\Article');
    }

    public function user()
    {
        return $this->belongsTo('App\\User');
    }
}
