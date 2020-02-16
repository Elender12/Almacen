@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="flex-center position-ref full-height">
            <h1>Modificar</h1>
            <h2>Almacen {{ $almacen->nombreAlmacen }} </h2>
            <p>Habra que realizar un cuestionario
            en la que introducir los datos nuevos y mande a controlador
            el request y realice el update de dicho elemento con el request</p>
        </div>
    </div>
</div>
@endsection