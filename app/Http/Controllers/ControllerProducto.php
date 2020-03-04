<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;
use App\Almacen;
use Auth;

class ControllerProducto extends Controller
{
    public function prod($id){
        $productos = Producto::bpro($id);
        return view('productos', ['productos' => $productos]);
    }

    public function add(){
        return view('add');

    }

    public function altaProducto(Request $request)
    {
        //creo un objeto
        $producto = new Producto();
        //cojo los valores
        $producto->id = $request->input('id');
        $producto->nombre = $request->input('nombre');
        $producto->fechaEntrada = $request->input('fechaEntrada');
        $producto->fechaSalida = $request->input('fechaSalida');
        $producto->categoria = $request->input('categoria');
        $producto->precio = $request->input('precio');
        $producto->cantidad = $request->input('cantidad');
        // $producto->almacen = $request->input('almacen');
        $producto->almacen = Auth::user()->id;

        $producto->save(); // guardo los datos
        //vuelvo a la vista que lista los almacenes
        //return  view('add');//redirect()->route('ProdAlt')->with('info','Se añadió el almacén.');
        $productos = Producto::bpro(Auth::user()->id);
        return view('productos', ['productos' => $productos]);
    }
}
