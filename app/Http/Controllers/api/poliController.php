<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use App\Poli;
use App\Jadwal;
use App\Pendaftaran;
use App\Antrian;
use App\User;

class poliController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $poli = Poli::all();
        // return response()->json(["index" => [[
        //     "nama_poli" => $poli->nama_poli]
        // ],"success" => "1"]);

        $poli = Poli::all();

        $response=[
            'poli'=>$poli
        ];

        return json_encode($response);

        // return response()->json(["read" => [[
        //     "id" => $poli->id,
        //     "nama_poli" => $poli->nama_poli]
        // ], "success" => "1"]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $pendaftaran = new Pendaftaran;
        // $pendaftaran->tanggal_daftar = $request->tanggal_daftar;
        // $pendaftaran->poli           = $request->poli;
        // $pendaftaran->save();

        // $result["success"] = "1";
        // $result["message"] = "success";

        // return json_encode($result);
    }

    public function simpan(Request $request)
    {
        $pendaftaran = new Pendaftaran;
        $pendaftaran->id_user         = $request->id_user;
        $pendaftaran->id_poli         = $request->id_poli;
        $pendaftaran->tanggal_periksa = $request->tanggal_periksa;
        $pendaftaran->poli            = $request->poli;
        $pendaftaran->save();
        $pendaftaran->id;

        $result["success"] = "1";
        $result["message"] = "success";
        $result["last_id"] = $pendaftaran->id;

        return json_encode($result);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $pendaftaran = DB::table('pendaftaran')->where("id", $id)->first();
        // $antrian     = DB::table('antrian')->where("id_pendaftaran", $id)->first();
        // $antrian     = DB::table('antrian')->where("id_pendaftaran", $id)->first();


        // return response()->json(["read" => [[
        //     "antrian"         => $antrian->no_antrian,
        //     "poli_tujuan"     => $pendaftaran->poli,
        //     "tanggal_periksa" => $pendaftaran->tanggal_periksa]
        // ],"success" => "1"]);

    }

    public function cek(Request $request)
    {
        // $pendaftaran = Pendaftaran::find($request->id);
        // $antrian     = Antrian::find($request->id_pendaftaran);

        // $pendaftaran = DB::table('pendaftarans')->where("id", $id)->first();
        // $antrian     = DB::table('antrian')->where("id_pendaftaran", $id)->first();

        $pendaftaran = DB::table('pendaftarans')
            ->select('antrians.no_antrian as no_antrian', 'pendaftarans.poli as poli', 'pendaftarans.tanggal_periksa as tanggal_periksa')
            ->join('antrians', 'pendaftarans.id', '=', 'antrians.id_pendaftaran')
            // ->join('users', 'pendaftarans.id_user', '=', 'users.id')
            ->where('pendaftarans.id', '=', $request->id)
            ->get();

        // $pendaftaran = Pendaftaran::find($request->id);
        // // $antrian     = Antrian::where("id_pendaftaran", $request->id);
 

        return response()->json(["read" => [[
            // "antrian"         => $pendaftaran->no_antrian,
            "poli_tujuan"     => $pendaftaran->poli,
            "tanggal_periksa" => $pendaftaran->tanggal_periksa]
        ],"success" => "1"]);

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
