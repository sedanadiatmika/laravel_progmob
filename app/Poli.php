<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Laravel\Passport\HasApiToken;

class Poli extends Model
{
    // protected $fillable = [
    //     'nama_poli'  
    // ];

    protected $cast = [
        'nama_poli' => 'array'
    ];
}
