@extends('layouts.app')

@section('content')
    <div class="flex-center position-ref">
        <h1>Lista de productos</h1>
    </div>

    <div class="flex-center position-ref">
        <button type = "button" class = "btn btn-success" onclick="location.href='{{action('ControllerAlmacen@create')}}'">Crear nuevo almacén</button>
        <button type = "button" class = "btn btn-success" onclick="location.href='{{action('ControllerAlmacen@todos')}}'">Mostrar todos los almacenes</button>
    </div>
    <br/><br/>
    <table class="table table-responsive table-hover flex-center position-ref">
        <tr>
            <th>Nombre </th>
            <th>Tipo </th>
            <th>Capacidad</th>
            <th>Número encargado</th>
            <th>Opciones:</th>
            <th></th>
        </tr>
        @foreach ($productos as $productos)
            <tr>
                <td>{{ $productos->nombreAlmacen }} </td>
                <td>{{ $productos->tipoAlmacen }} </td>
                <td>{{ $productos->capacidad }} </td>
                <td>{{ $productos->encargado }} </td>
            </tr>
        @endforeach 
    </table>
@endsection
