<?php

namespace App;
use App\Usuario; 
use Auth;

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

    public static function busc(){
        $id=Auth::user()->id;
        
    }
}
