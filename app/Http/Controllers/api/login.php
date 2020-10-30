<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class login extends Controller
{
    public $successStatus = 200;

    public function index(Request $request){
        if(Auth::attempt(['username' => $request->username, 'password' => $request->password])){
            $user = Auth::user();
            $success['token'] =  $user->createToken('nApp')->accessToken;

            $result=[];

            $index['name'] = $user->name;
            $index['username'] = $user->username;
            $index['id'] = $user->id;
            $index['token'] = $success['token'];

            $result['login'] = [$index];

            $result['success'] = "1";
            $result['message'] = "success";
            

            return response()->json($result);
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }
}
