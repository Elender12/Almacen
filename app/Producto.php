<?php

namespace App;
use App\Usuario; 
use Auth;
use DB;


use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $fillable= [
        'id',
        'nombre',
        'fechaEntrada',
        'fechaSalida',
        'categoria',
        'precio',
        'cantidad',
        'almacen'
    ];
    public $timestamps = false;


    public static function bpro($id){

    $productos = DB::select('select * from productos where almacen = ?', [$id]);

    return $productos;
    }
}
