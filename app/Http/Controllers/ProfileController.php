<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Profile;

class ProfileController extends Controller
{  
    //get profile data 

    public function get_profile($id){

            Profile::where('id',$id)
                    ->where('user_id',Auth::guard('api')->id())
                    ->first();

    }

    //stores profile
     
    public function save_profile(Request $request){

            return Profile::create([
                'name'=>$request->name,
                'lastname'=>$request->name,
                'user_id'=>Auth::guard('api')->id()
            ]);

    }
   
}
