<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Almacen extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('almacenes', function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('nombreAlmacen');
            $table->string('tipoAlmacen');
            $table->string('capacidad');
            $table->unsignedBigInteger('encargado');
            $table->foreign('encargado')->references('id')->on('usuarios');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('almacenes');
    }
}
