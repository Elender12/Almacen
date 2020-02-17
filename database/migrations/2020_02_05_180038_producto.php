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
            $table->string('fechaEntrada');
            $table->string('fechaSalida');
            $table->string('categoria');
            $table->float('precio');
            $table->integer('cantidad');
            $table->unsignedBigInteger('almacen');
            $table->foreign('almacen')->references('id')->on('almacens');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
