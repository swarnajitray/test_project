<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['title', 'sku'];

    public function categories()
    {
        return $this->belongsTo('App\Category', 'cat_id');
    }
}
