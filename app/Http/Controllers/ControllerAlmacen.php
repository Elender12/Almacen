<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Almacen;

class ControllerAlmacen extends Controller
{
    // Lista los almacenes
    public function index(){
        $almacenes = Almacen::all();
        return view('almacenes', ['almacenes' => $almacenes]);
    }

    //Elimina un almacen
    public function delete(){
        Almacen::delete();
        //return index();
      //  return view('home');
      return view('almacenes', ['almacenes' => $almacenes]);
    }

    // Actualización de los datos
    public function update($id)
    {
        $almacen = Almacen::find($id);
        // TODO: CRear la vista para mostrar el formulario de edicion
        return view('almacenes', ['almacen' => $almacen]);
    }

    

}
