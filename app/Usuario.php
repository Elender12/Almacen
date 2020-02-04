<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $fillable= [
        'nombre',
        'email',
        'rol',
    ];
    public $timestamps = false;
}
