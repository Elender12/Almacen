<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Usuario;
use Faker\Generator as Faker;

$factory->define(Usuario::class, function (Faker $faker) {
    return [
        'nombre'=>$faker->sentence(1),
        'email'=>$faker->sentence(1),
        'rol'=>$faker->sentence(1),
        ];
});
