<?php

namespace App\model;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Father extends Model
{
//    public function xyz()
//    {
//        return $this->belongsTo('App\model\Player');
//    }
    
    public function player()
    {
       // return $this->belongsTo('App\model\Player', 'player_id', 'id');
        return $this->belongsTo('App\model\Player');
    }
 
    protected $fillable = [
        'name'
    ];

}
