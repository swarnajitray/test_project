<?php

namespace App\model\apis;
use Illuminate\Database\Eloquent\Model;

class Oauth_access_token extends Model
{
    //

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [];
    public $timestamps  = false;
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */

     public static function deleteToken($user_id)
     {
            $delete = Oauth_access_token::where(array('user_id' => $user_id))->delete();
            return $delete;
      }
}
