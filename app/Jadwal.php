<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Laravel\Passport\HasApiToken;

class Jadwal extends Model
{
    protected $fillable = [
        'waktu'
    ];
}
