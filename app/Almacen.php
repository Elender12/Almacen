<?php

namespace App;
use App\Usuario; 
use Auth;
use DB;

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

        $almacens = DB::select('select * from almacens where encargado = ?', [$id]);
        return $almacens;
    }
}
