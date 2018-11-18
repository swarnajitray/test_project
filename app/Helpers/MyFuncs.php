<?php

namespace App\Helpers;
// require 'autoload.php'; 

use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use App\User;
use View;
use Auth;
use Illuminate\Support\Facades\Crypt;
use Session;


class MyFuncs
{
    
     public static function json_response($data = array(), $http_response, $error_message, $success_message, $error_msg_details=''){
                
        //die('http_response->'.$http_response);
        $developer = 'www.massoftind.com';
        $version = str_replace('_', '.', Config::get('serverconfig.test_api_ver'));
        
        $raws = array();   
        if($error_message != ''){
            $raws['error_message']      = $error_message;
            if($error_msg_details != '') {
                $raws['error_msg_details']  = $error_msg_details;
            }
        } else{
            $raws['success_message']    = $success_message;
        }        

        $raws['data']       = $data;
        $raws['publish']    = array(
            'version' => $version,
            'developer' => $developer
        );
        $raws['status']    = Config::get('formArray.status_code.'.$http_response);

        /*$response = array(array(
                'raws' => $raws
            ), array('api_response'=>Config::get('serverconfig.'.$http_response)));*/

        $response = array(
                        'raws' => $raws
                    );
        //response in json format
        return response($response);
    }
    
     public static function pre($array, $die = false)
    {
        echo '<pre>';
        print_r($array);
        echo '</pre>';
        if ($die) {
            die();
        }
    }

}