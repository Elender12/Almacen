<?php

namespace App;

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
}
