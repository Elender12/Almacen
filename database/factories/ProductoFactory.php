<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Producto;
use Faker\Generator as Faker;

$factory->define(Producto::class, function (Faker $faker) {
    return [
        'nombre'=>$faker->sentence(1),
        'fechaEntrada'=>$faker->sentence(1),
        'fechaSalida'=>$faker->sentence(1),
        'categoria'=>$faker->sentence(1),
        'precio'=>$faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 1000),
        'cantidad'=>$faker->randomDigit,
        'almacen'=>$faker->numberBetween(2,6),
    ];
});