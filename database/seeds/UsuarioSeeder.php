<?php

use Illuminate\Database\Seeder;
use App\Usuario;

class UsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuarios')->insert([
            'nombre'=> Str::random(6),
            'email'=>Str::random(10). '@correo.com',
            'rol'=>Str::random(3),
        ]);
        factory(Usuario::class, 10)->create();
    }
}
