<?php

namespace App\Http\Controllers\player;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\model\Player;

use Validator;
use Image;
/*use App\Product;
use App\Category;
use App\Role;
use App\User;
use App\Country;
use Image;*/

class PlayerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       // $value = config('app.timezone');
       
        //$data['players'] = \App\model\Player::all();
       // $data['players'] = DB::select('select * from players where status = ?', ['active']);
        $data['players'] = Player::getallplayer();
        //echo("<pre>");
       // print_r($data);
       // print_r($data['players']->toArray());
       // echo("</pre>");
       // die();
        return view('admin.playerlist', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add_edit($id='')
    {
       
        //$data['role'] = User::find(2)->role;
     
       // $data['allcats'] = Category::all();
        if($id != '')
        {
            $data['pinfo'] = Product::where('id', $id)->first();

            return view('backend.product.addproduct', $data);
        }else
        {
            return view('admin.addplayer');
        }
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|min:5',
            'phone' => 'integer',
            'email' => 'required',
            'picture' => 'required|mimes:jpeg,jpg,bmp,png',
        ]);

        $file = $request->file('picture');
        $filename =  time().$file->getClientOriginalName();
        $success = $file->move(base_path().'/storage/app/player', $filename);
        if($success)
        {
           $destinationPath = storage_path('/app/thumb_img');
            $img = Image::make($success);
            $img->resize(100, 100, function ($constraint) {
            $constraint->aspectRatio();
            })->save($destinationPath.'/'.$filename);
        }

        //echo '<pre>';print_r($_POST);die;

        $player = new Player;
        $player->name = $request->name;
       // $player->sku = time().str_slug($product->title, "-");
        $player->address = $request->address;
        $player->phone = $request->phone;
        $player->email = $request->email;
        $player->gender = $request->gender;
        $player->pic = $filename;
        $player->status ='active';
        $insert= $player->save();
        if($insert)
        {
            return redirect('/admin/playerlist');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
public function edit($id)
    {
       // $data['players'] = Player::all();
        $id = decrypt($id);
        $data['p_info'] = Player::find($id);
//        echo '<pre>';
//       // print_r($data->toArray()); 
//        print_r($data['p_info']->toArray());
//       // print_r($data['players']->toArray());
//        echo '</pre>';
//        die();
        
        return view('admin.addplayer', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $id = decrypt($id);
        $post = Player::findOrFail($id);
        if ($post->email === $request->email) {
            $request->validate([
                'name' => 'required|min:5',
                'phone' => 'integer',
                'email' => 'required',
                'picture' => '|mimes:jpeg,jpg,bmp,png',
            ]);

            if (isset($_FILES['picture']) && $_FILES['picture']['size'] > 0) {
                $file = $request->file('picture');
                $filename = time() . $file->getClientOriginalName();
                $success = $file->move(base_path() . '/storage/app/player', $filename);
                if ($success) {
                    $destinationPath = storage_path('/app/thumb_img');
                    $img = Image::make($success);
                    $img->resize(100, 100, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destinationPath . '/' . $filename);
                }
            } else {
                $filename = $request->picture_name;
            }

            $data = array(
                'name' => $request->name,
                'address' => $request->address,
                'phone' => $request->phone,
                'gender' => $request->gender,
                'pic' => $filename
            );
        }
        $post->fill($data);
        $post->save();
        $data['p_info'] = Player::find($id);
        return view('admin.addplayer', $data);
        //return redirect('/admin/playerlist');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id) {
        $id = decrypt($id);
        $player = Player::find($id);
        $player->delete();
        return redirect('/admin/playerlist');
    }

    public function OnetoOne($id) {
        $id = decrypt($id);
        $details = Player::findOrFail($id)->abc;
        echo('<pre>');
        print_r($details->toArray());
        echo("</pre>");
    }

    public function Inverse_OnetoOne($id) {
        $id = decrypt($id);
        // $details = \App\model\Father::all
        // N.B here default foreign key name by examining the name of the relationship
        // method and suffixing the method name with _id.
        // and 1 in id in father table;
        $details = \App\model\Father::find(1)->player;
        echo('<pre>');
        print_r($details->toArray());
        echo("</pre>");
    }

    public function ManytoMany($id) {
        $id = decrypt($id);
        $user = Player::find(1)->xyz;

        foreach ($user as $role) {
            echo("df");
            echo $role->pivot->created_at;
        }

        echo('<pre>');
        print_r($user->toArray());
        echo("</pre>");
    }
    
    public function EagerLoading($id) {
        $fathers = \App\model\Father::with('player')->get();
        //  $fathers = \App\model\Father::with('player:id,name,email')->get();
//        $fathers = \App\model\Father::with(['player' => function ($query) {
//                        $query->where('name', 'like', '%swa%');
//                    }])->get();
//        foreach ($fathers as $father) {
//            echo $father->player->name;
//            echo('<br>');
//        }
        echo('<pre>');
        print_r($fathers->toArray());
        echo("</pre>");
    }

    public function InUpRelatedModels($id) {
        $name = new \App\model\Father(['name' => 'Koushik']);
        $player = Player::find(6);
        $player->abc()->save($name);
        echo("Successfully Saved in father table");
        die();
    }
    
    public function Belongsto($id) {
        $user = \App\model\Father::find(1);
        $var = Player::find(6);
        $user->player()->associate($var);
       // $user->player()->dissociate($var);
        $user->save();
        echo("Successfully updated father table");
        die();
    }
    
    public function attach($id) {
        $roleId = 3;
        $player = Player::find(6);
        $player->xyz()->attach($roleId);
        echo("Successfully updated player_role table");
        die();
    }
    
//    public function MiddleWarepage()
//    {
//        return view('admin.middleware'); 
//    }

}
