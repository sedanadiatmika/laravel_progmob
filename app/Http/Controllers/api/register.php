<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

use App\User;

class register extends Controller
{
    public function index(Request $request){

        $validator = Validator::make($request->all(),[
            'nama' => 'required',
            'username' => "required|unique:users,username",
            'jenis_kelamin' => 'required',
            'no_telp' => 'required|unique:users,nomor_telp',
            'alamat' => 'required',
            'tgl_lahir' => 'required',
            'password' => 'required',
        ]);

            
        if($validator->fails()){
            return response()->json([
                'message' => $validator->errors(),
                'success' => 2,
            ]
                
            );
        }    

        $user = new User;
        $user->name = $request->nama;
        $user->username = $request->username;
        $user->jenis_kelamin = $request->jenis_kelamin;
        $user->nomor_telp = $request->no_telp;
        $user->alamat = $request->alamat;
        $user->tanggal_lahir = $request->tgl_lahir;
        $user->password = Hash::make($request->password);
        $user->save();

        $result["success"] = "1";
        $result["message"] = "success";

        return json_encode($result);

    }

    public function cobak(){
        return "oke";
    }
}
