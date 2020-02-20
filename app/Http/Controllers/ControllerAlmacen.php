<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Almacen;

class ControllerAlmacen extends Controller
{
    // Lista los almacenes del usuario logueado
    public function index(){
        $almacenes = Almacen::busc();
        return view('almacenes', ['almacenes' => $almacenes]);
    }
    
    // Lista los almacenes de todos los usuarios
    public function todos(){
        $almacenes = Almacen::all();
        return view('almacenes', ['almacenes' => $almacenes]);
    }

    //Elimina un almacen
    public function delete($id){
        $almacenes=Almacen::destroy($id);
        //return index();
      //  return view('home');
      return redirect('home');
    }


    // Actualización de los datos
    public function update($id)
    {
        $almacen = Almacen::find($id);
        return view('up', ['almacen' => $almacen]);
    }


    public function create()
    {
        //redirecciona a la vista create
        return view('create');
    }
    public function altaAlmacen(Request $request)
    {
        //creo un objeto
        $almacen = new Almacen();
        //cojo los valores
        $almacen->nombreAlmacen = $request->input('nombreAlmacen');
        $almacen->tipoAlmacen = $request->input('tipo');
        $almacen->capacidad = $request->input('capacidad');
        $almacen->encargado = $request->input('encargado');
        $almacen->save(); // guardo los datos
        //vuelvo a la vista que lista los almacenes
        return redirect()->route('home')->with('info','Se añadió el almacén.');
    }
    public function actualizarAlmacen(Request $request)
    {
        //instancion un objeto tipo almacen
        $almacen = new Almacen();
        //lo busco por el id
        $almacen = Almacen::find($request->input('id'));
        $almacen->nombreAlmacen = $request->input('nombreAlmacen');
        $almacen->tipoAlmacen = $request->input('tipo');
        $almacen->capacidad = $request->input('capacidad');
        $almacen->encargado = $request->input('encargado');
        $almacen->save(); // guardo los datos;
        //vuelvo a la vista que lista los almacenes
        return redirect()->route('home')->with('info','Almacen actualizado');
    }
}
