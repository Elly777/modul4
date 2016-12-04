<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable =['path'];
    public $timestamps = false;
    public function article()
    {
        return $this->belongsTo('App\Models\Article');

    }
}
