<?php

namespace App\model\apis;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\DB;
//use Illuminate\Database\Eloquent\SoftDeletes;
class Cricket_player extends Model
 {
 
    protected $fillable = [
        'name', 'address', 'type', 'gender'
    ];
    public $timestamps  = false;

 public static function getallplayer($param) {
        $result = Cricket_player::select('*');
        if (isset($param['searchText']) && $param['searchText'] != '') {
            $result->where('name', 'LIKE', '%' . $param['searchText'] . '%');
        }
        $result = $result->limit($param['pagesize'])->offset($param['offset'])->orderBy('name', 'ASC')->get();
        return ($result);
    }

}


