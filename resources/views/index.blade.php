@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
            <h1>Almacen</h1>
    </div>

    @guest                  
        <div class="center position-ref bg-warning warning">
            <p>Vaya, parece que no estás logeado en la aplicación si
            quiere acceder al contenidos deberá iniciar sesión con su cuenta o
            registrarse en caso de no tener una.</p>
        </div>            
    @else
        <div class="center position-ref">
            <p>Bienvenido usuario {{ Auth::user()->name }} !</p>
        </div>
    @endguest
</div>

@endsection



