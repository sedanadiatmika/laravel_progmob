<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Laravel\Passport\HasApiToken;

class Pendaftaran extends Model
{
    // protected $fillable = [
    //     'id_poli', 'tanggal_periksa', 'poli'
    // ];
    protected $table = 'pendaftarans';
}
