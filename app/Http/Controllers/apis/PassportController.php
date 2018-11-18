<?php

namespace App\Http\Controllers\apis;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use helper;
use Illuminate\Support\Facades\Auth;
use Validator;
//use Illuminate\Database\Eloquent\Model;
use App\model\apis\Oauth_access_token;
use App\model\apis\Cricket_player;




use Hash;
use DateTime;
use Laravel\Passport\TokenRepository;
use League\OAuth2\Server\ResourceServer;
use League\OAuth2\Server\Exception\OAuthServerException;
use Symfony\Bridge\PsrHttpMessage\Factory\DiactorosFactory;


class PassportController extends Controller {

    public function __construct(ResourceServer $server, TokenRepository $tokens) {
         $this->server = $server;
        $this->tokens = $tokens;
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Method: GET, POST');
        header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept,Authorization');
    }

    public function tokenGeneration() {
//        echo("kk");
//        die();
        $success_message = $error_message = $http_response = "";
        $result_array = array();

        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
        // if (Auth::attempt(['username' => request('username'), 'password' => request('password')])) 
            $user = Auth::user();
            $success['token'] = $user->createToken('MyApp')->accessToken;

            $success_message = "Token Generated Successfully.";
            $result_arr = $success;
            $http_response = 'http_response_ok';
        } else {
            $error_message = "Invalid Token";
            $http_response = 'http_response_unauthorized';
        }
        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }
    
     public function login(Request $request){ 
         //echo("kkk");
        // die();
    	$success_message =$error_message =$http_response="";
    	$result_arr =array();
        // $post_data = $request->input();
        // $kk= $request->input('email');
        //helper::pre($request->all(),1);
        //if(Auth::attempt(['email' => request('email'), 'password' => request('password')]))
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')]))
        	{
            $user = Auth::user();
            //helper::pre($user,1);
            $success['token'] =  $user->createToken('MyApp')->accessToken;
            $result_arr['token'] = $success['token'] ;
            $result_arr['user_id'] = $user['id'] ;
            $result_arr['name'] = $user['name'] ;
            $result_arr['email'] = $user['email'] ;
            $http_response = 'http_response_ok';
            //helper::pre($request->all(),1);
            return helper::json_response($result_arr, $http_response, $error_message, $success_message);
           
        }
        else{
            $http_response = 'http_response_bad_request';
            $error_message = 'Invalid user';
            return helper::json_response($result_arr, $http_response, $error_message, $success_message);            
        }
    }
    
    
    
    public function validateToken(Request $request, $localCall = false) {
        //helper::pre($request->all(),1);
        // First, we will convert the Symfony request to a PSR-7 implementation which will
        // be compatible with the base OAuth2 library. The Symfony bridge can perform a
        // conversion for us to a Zend Diactoros implementation of the PSR-7 request.
        $psr = (new DiactorosFactory)->createRequest($request);
        // print_r($psr);
        // die();
        try {
            $psr = $this->server->validateAuthenticatedRequest($psr);

            // Next, we will assign a token instance to this user which the developers may use
            // to determine if the token has a given scope, etc. This will be useful during
            // authorization such as within the developer's Laravel model policy classes.
            $token = $this->tokens->find(
                    $psr->getAttribute('oauth_access_token_id')
            );

            $currentDate = new DateTime();
            $tokenExpireDate = new DateTime($token->expires_at);
//            print_r($tokenExpireDate);
//            die();

            $isAuthenticated = $tokenExpireDate > $currentDate ? true : false;

            if ($localCall) {
                return $isAuthenticated;
            } else {
                return json_encode(array('authenticated' => $isAuthenticated));
            }
        } catch (OAuthServerException $e) {
            if ($localCall) {
                return false;
            } else {
                return json_encode(array('error' => 'Something went wrong with authenticating. Please logout and login again.'));
            }
        }
    }

 public function userLogout(Request $request) {
        $error_message = $success_message = $http_response = '';
        $result_arr = array();
        $flag = true;
        if ($flag) {
            $user = Auth::user();
            $id = $user->id;
            $res = Oauth_access_token::deleteToken($id);
            $http_response = 'http_response_ok';
            $success_message = 'Logged out Succesfully';
        } else {
            $http_response = 'http_response_bad_request';
        } return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }

  
//    public function addPlayer(Request $request) {
//        //helper::pre($request->all(),1);
//        $error_message = $success_message = $http_response = '';
//        $result_arr = array();
//        $flag = true;
//        $is_allow = 0;
//
//        if (empty($request->input('name'))) {
//            $flag = false;
//            $error_message = "Name is required";
//        } else {
//            $data['name'] = $request->name;
//        }
//        if (empty($request->input('address'))) {
//            $flag = false;
//            $error_message = "Address is required";
//        } else {
//            $data['address'] = $request->address;
//        }
//        if (empty($request->input('type'))) {
//            $flag = false;
//            $error_message = "Type is required";
//        } else {
//            $data['type'] = $request->type;
//        }
//        if (empty($request->input('gender'))) {
//            $flag = false;
//            $error_message = "Gender is required";
//        } else {
//            $data['gender'] = $request->gender;
//        }
//        
//        if ($flag) {
//            $player = new Cricket_player();
//
//            $player->name = $data['name'];
//            $player->address = $data['address'];
//            $player->type = $data['type'];
//            $player->gender = $data['gender'];
//            $player->status = 'active';
//            $insert = $player->save();
//            if ($insert) {
//                //$result_arr['user_details']    = $user;
//                $http_response = 'http_response_ok';
//                $success_message = 'Player added  Succesfully';
//            } else {
//                $result_arr['user_details'] = array();
//                $http_response = 'http_response_ok';
//                $error_message = 'No player added';
//            }
//        } else {
//            $http_response = 'http_response_bad_request';
//        }
//        if ($error_message != '') {
//            $response['error_message'] = $error_message;
//        } else {
//            $response['success_message'] = $success_message;
//        }
//
//        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
//    }
}
