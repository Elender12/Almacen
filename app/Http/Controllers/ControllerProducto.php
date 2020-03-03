<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ControllerProducto extends Controller
{
    public function prod(){
        $productos = Producto::all();
        return view('productos', ['productos' => $productos]);
    }
}
