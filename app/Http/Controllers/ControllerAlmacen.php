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

    // Elimina un almacen
    public function delete($id){
        Almacen::destroy($id);
        //return index();
        return view('home');
    }
}
