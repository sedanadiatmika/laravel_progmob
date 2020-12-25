<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Pendaftaran;
use App\User;
use App\Poli;


class PendaftaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dftr  = Pendaftaran::all();

        $response=[
            'pendaftaran'=>$dftr
        ];

        // $result["success"] = "1";
        // $result["message"] = "success";
        // $result["pendaftaran"] = $dftr;

        return json_encode ($dftr);
        // return json_encode ($dftr);
    }

    public function readAll(Request $request)
    {
        $id_user         = $request->id_user;
        $dftr  = Pendaftaran::where("id_user", $id_user)
                    ->get();

        $response=[
            'pendaftaran'=>$dftr
        ];

        // $result["success"] = "1";
        // $result["message"] = "success";
        // $result["pendaftaran"] = $dftr;

        // return json_encode ($result);
        return json_encode($dftr);

    }

    public function readAllNEW()
    {
        $dftr  = Pendaftaran::all();

        $response=[
            'pendaftaran'=>$dftr
        ];

        // $result["success"] = "1";
        // $result["message"] = "success";
        // $result["pendaftaran"] = $dftr;

        return json_encode ($result);
        // return json_encode ($dftr);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id_user         = $request->id_user;
        $id_poli         = $request->id_poli;
        $tanggal_periksa = $request->tanggal_periksa;

        $user  = User::find($request->id_user);
        $poli  = Poli::find($request->id_poli);
        $dftr  = Pendaftaran::where('id_poli', $id_poli)
                    ->where('tanggal_periksa', $tanggal_periksa)
                    ->count();

        ++$dftr;
        $qrcode = $id_user.'/'.$tanggal_periksa.'/'.$id_poli.'/'.$dftr;

        $dpendaftaran = new Pendaftaran;
        $dpendaftaran->id_user         = $id_user;
        $dpendaftaran->id_poli         = $id_poli;
        $dpendaftaran->no_antrian      = $dftr;
        $dpendaftaran->nama_user       = $user->name;
        $dpendaftaran->tanggal_lahir   = $user->tanggal_lahir;
        $dpendaftaran->poli_tujuan     = $poli->nama_poli;
        $dpendaftaran->tanggal_periksa = $tanggal_periksa;
        $dpendaftaran->qrcode          = $qrcode;        

        $dpendaftaran->save();

        $result["success"] = "1";
        $result["message"] = "success";
        $result["last_id"] = $dpendaftaran->id;
        return json_encode($result);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function read(Request $request)
    {

        $dftr = Pendaftaran::find($request->id);

        return response()->json(["read" =>[[
            "nama_user"       => $dftr->nama_user,
            "no_antrian"      => $dftr->no_antrian,
            "tanggal_lahir"   => $dftr->tanggal_lahir,
            "poli_tujuan"     => $dftr->poli_tujuan,
            "tanggal_periksa" => $dftr->tanggal_periksa,
            "qrcode"          => $dftr->qrcode],
        ], "success" => "1"]);
    }

    public function hide(Request $request)
    {
        $id_user = $request->id_user;

        $dftr  = Pendaftaran::where('id_user', "=",$id_user)
                    ->update([
                        'status_pendaftaran' => "hide",
                        ]);

        echo $dftr;

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
