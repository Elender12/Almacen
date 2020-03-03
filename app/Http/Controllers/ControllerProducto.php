<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;

class ControllerProducto extends Controller
{
    public function prod($id){
        $productos = Producto::bpro($id);
        return view('productos', ['productos' => $productos]);
    }
}
