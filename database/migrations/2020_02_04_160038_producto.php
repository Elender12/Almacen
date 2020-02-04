<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Producto extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //creamos los campos de la base de datos
        Schema::create('productos', function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('nombre');
            $table->timestamps('fechaEntrada');
            $table->timestamps('fechaSalida');
            $table->string('categoria');
            $table->float('precio');
            $table->int('cantidad');
            $table->int('almacen');


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
