<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use App\User;

class userController extends Controller{
    
    public function read(Request $request){
        
        // AMBIL USER
            $user = User::find($request->id);

            return response()->json(["read" => [[
                "name" => $user->name,
                "username" => $user->username,
                "jenis_kelamin" => $user->jenis_kelamin,
                "tanggal_lahir" => $user->tanggal_lahir,
                "nomor_telp" => $user->nomor_telp,
                "alamat" => $user->alamat]
            ],"success" => "1"]);
        // AKHIR
    }

    public function edit(Request $request){

        $user = User::find($request->id);

        $user->name = $request->nama;
        $user->username = $request->username;
        $user->jenis_kelamin = $request->jenis_kelamin;
        $user->tanggal_lahir = $request->tgl_lahir;
        $user->nomor_telp = $request->no_telp;
        $user->alamat = $request->alamat;
        $user->save();

        return response()->json(['success'=>'1','message' => 'success']);
    }
}
