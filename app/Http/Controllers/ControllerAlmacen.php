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
        // TODO: CRear la vista para mostrar el formulario de edicion
        //return redirect('up');
        return view('up', ['almacen' => $almacen]);

    }

    public function create()
    {
        //redirecciona a la vista create
        return view('create');
    }

    

}
