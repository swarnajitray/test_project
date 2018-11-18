<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
//use Illuminate\Database\Eloquent\SoftDeletes;
class Player extends Model
 {
    //use SoftDeletes;
    public static function getallplayer() {
//         $var = Player::all();
//         return $var;
        return DB::select('select * from players where status = ?', ['active']);
    }

    // protected $table = 'players'; 
    // protected $guarded = array('*');
//    protected $guarded = array('id', 'password');
    protected $fillable = [
        'name', 'address', 'phone', 'gender', 'pic'
    ];

 

   // protected $dates = ['deleted_at'];

     public function abc()
    {
         // no need to define any method in father model
        return $this->hasOne('App\model\Father');
    }

    public function xyz() {
        // common table name should be palyer_role if calling from player model
        return $this->belongsToMany('App\model\Role')->withTimestamps();
    }

}


