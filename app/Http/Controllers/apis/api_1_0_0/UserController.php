<?php

namespace App\Http\Controllers\apis\api_1_0_0;

use App\Http\Controllers\Controller;
//use App\Models\apis\Classe;
//use App\Models\apis\Map_menu_with_student;
//use App\Models\apis\School;
//use App\Models\apis\School_admin_detail;
//use App\Models\apis\Student_detail;
use App\User;
use App\model\apis\Cricket_player;
use helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
//use Validator;

// this is for Xlsx
use Image;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class UserController extends Controller
{
   
    /* --------------------------------------------------------------------------
     * @ Function Name            : User Details()
     * @ Added Date               : 01-10-2018
     * @ Added By                 : Swarnajit Ray
     * -----------------------------------------------------------------
     * @ Description              : User Details
     * -----------------------------------------------------------------
     * @ return                   : array
     * -----------------------------------------------------------------
     * @ Modified Date            :
     * @ Modified By              :
     *
     */
    public function userDetails(Request $request)
    {
        //echo("kkk");
       // die();
        $error_message = $success_message = $http_response = '';
        $result_arr    = array();
        $flag          = true;
        $is_allow      = 0 ;
        if ($flag) {

            $user = Auth::user()->toArray();
            // print_r($user); die;
           
            if (!empty($user) && count($user) > 0) {
                $result_arr['user_details']    = $user;
                $http_response             = 'http_response_ok';
                $success_message           = 'Stdent details listed  Succesfully';
            } else {
                $result_arr['user_details']   = array();
                $http_response             = 'http_response_ok';
                $error_message             = 'There is no details for User';
            }

        } else {
            $error_message = 'Something went wrong in api.';
            $http_response = 'http_response_bad_request';

        }

        return helper::json_response($result_arr, $http_response, $error_message, $success_message);

    }
    
    public function addPlayer(Request $request) {
        $error_message = $success_message = $http_response = '';
        $result_arr = array();
        $flag = true;
        $is_allow = 0;
        //print_r($_FILES);
        
        //helper::pre($request->all(),1);
        
        if (empty($request->input('name'))) {
            $flag = false;
            $error_message = "Name is required";
        } else {
            $data['name'] = $request->name;
        }
        if (empty($request->input('address'))) {
            $flag = false;
            $error_message = "Address is required";
        } else {
            $data['address'] = $request->address;
        }
        if (empty($request->input('type'))) {
            $flag = false;
            $error_message = "Type is required";
        } else {
            $data['type'] = $request->type;
        }
        if (empty($request->input('gender'))) {
            $flag = false;
            $error_message = "Gender is required";
        } else {
            $data['gender'] = $request->gender;
        }

        if (empty($request->input('id'))) {
            $data['id'] = "";
        } else {
            $data['id'] = $request->id;
        }
        
        if ($data['id'] == 'null') {
            if (!isset($_FILES['uploadFile'])) {
                $flag = false;
                $error_message = "Profile image is required";
            }
        }
        if ($data['id']!='null') {
            $post = Cricket_player::findOrFail($data['id']);
            $data = array(
                'name' => $data['name'],
                'address' => $data['address'],
                'type' => $data['type'],
                'gender' => $data['gender'],
            );
            $post->fill($data);
            if ($post->save()) {
                //$data['p_info'] = Cricket_player::find($data['id']);
                $http_response = 'http_response_ok';
                $success_message = 'Player edited  Successfully';
            } else {
                $http_response = 'http_response_ok';
                $success_message = 'No Player Edited';
            }
        } else {
            if ($flag) {
                
                $file = $request->file('uploadFile');
                $filename = time() . $file->getClientOriginalName();
                $success = $file->move(base_path() . '/storage/app/player', $filename);
                if ($success) {
                    $destinationPath = storage_path('/app/thumb_img');
                    $img = Image::make($success);
                    $img->resize(100, 100, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destinationPath . '/' . $filename);
                }
                $player = new Cricket_player();
                
                $player->name = $data['name'];
                $player->address = $data['address'];
                $player->type = $data['type'];
                $player->gender = $data['gender'];
                $player->img_name = $filename;
                $player->status = 'active';
                $insert = $player->save();
                if ($insert) {
                    //$result_arr['user_details']    = $user;
                    $http_response = 'http_response_ok';
                    $success_message = 'Player added  Successfully';
                } else {
                    $result_arr['user_details'] = array();
                    $http_response = 'http_response_ok';
                    $error_message = 'No player added';
                }
            } else {
                $http_response = 'http_response_bad_request';
            }
        }
        if ($error_message != '') {
            $response['error_message'] = $error_message;
        } else {
            $response['success_message'] = $success_message;
        }

        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }

    public function listPlayer(Request $request) {
        $error_message = $success_message = $http_response = '';
        $result_arr = array();
        $flag = true;
        $is_allow = 0;

        if (empty($request->input('pageno'))) {
            $flag = false;
            $error_message = "Page number is required";
        } else {
            $data['pageno'] = $request->pageno;
        }
        if (empty($request->input('pagesize'))) {
            $flag = false;
            $error_message = "Per page size is required";
        } else {
            $data['pagesize'] = $request->pagesize;
        }
        if (empty($request->input('searchByName'))) {
            $data['searchText'] = '';
        } else {
            $data['searchText'] = $request->searchByName;
        }
        
        //helper::pre($request->all(),1);
        $data['offset'] = $data['pagesize'] * ($data['pageno'] - 1);

        if ($flag) {
            $player = Cricket_player::getallplayer($data);
            $all_player = Cricket_player::where('name', 'LIKE', '%' . $data['searchText'] . '%')->get()->toArray();
            //helper::pre(player,1);
            if (count($player)) {
                $result_arr['count'] = count($all_player);
                $result_arr['dataset'] = $player;
                $http_response = 'http_response_ok';
                $success_message = 'Player Fetch  Successfully';
            } else {
                $result_arr['count']=0;
                $result_arr['dataset'] = array();
                $http_response = 'http_response_ok';
                $error_message = 'No player fetched';
            }
        } else {
            $http_response = 'http_response_bad_request';
        }
        if ($error_message != '') {
            $response['error_message'] = $error_message;
        } else {
            $response['success_message'] = $success_message;
        }

        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }
    
  public function profileDetails(Request $request) {
        $error_message = $success_message = $http_response = '';
        $result_arr = array();
        $flag = true;
        $is_allow = 0;
        
        if (empty($request->input('id'))) {
            $flag = false;
            $error_message = "profile id is required";
        } else {
            $data['id'] = $request->id;
        }
        
        if ($flag) {
            $player = Cricket_player::find($data['id']);
            //helper::pre($player,1);
            if (count($player)) {
                $result_arr['dataset'] = $player;
                $http_response = 'http_response_ok';
                $success_message = 'Player Detials Fetch  Successfully';
            } else {
                $result_arr['dataset'] = array();
                $http_response = 'http_response_ok';
                $error_message = 'No player Found';
            }
        } else {
            $http_response = 'http_response_bad_request';
        }
        if ($error_message != '') {
            $response['error_message'] = $error_message;
        } else {
            $response['success_message'] = $success_message;
        }

        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }  
    
    public function deleteProfile(Request $request) {
        $error_message = $success_message = $http_response = '';
        $result_arr = array();
        $flag = true;
        $is_allow = 0;
        
        if (empty($request->input('id'))) {
            $flag = false;
            $error_message = "profile id is required";
        } else {
            $data['id'] = $request->id;
        }
        
        if ($flag) {
            $player = Cricket_player::find($data['id']);
            //helper::pre($player,1);
            if ($player->delete()) {
                $http_response = 'http_response_ok';
                $success_message = 'Player Deleted  Successfully';
            } else {
               
                $http_response = 'http_response_ok';
                $error_message = 'No Data Deleted';
            }
        } else {
            $http_response = 'http_response_bad_request';
        }
        if ($error_message != '') {
            $response['error_message'] = $error_message;
        } else {
            $response['success_message'] = $success_message;
        }

        return helper::json_response($result_arr, $http_response, $error_message, $success_message);
    }  

}
