<?php

namespace App;
use App\Usuario; 

use Illuminate\Database\Eloquent\Model;

class Almacen extends Model
{
    protected $fillable= [
        'id',
        'nombreAlmacen',
        'tipoAlmacen',
        'capacidad',
        'encargado'
    ];
    public $timestamps = false;
}
