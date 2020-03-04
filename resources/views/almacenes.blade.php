@extends('layouts.app')

@section('content')
    <div class="flex-center position-ref">
        <h1>Lista de almacenes</h1>
    </div>

    <div class="flex-center position-ref">
        <button type = "button" class = "btn btn-success m-4" onclick="location.href='{{action('ControllerAlmacen@create')}}'">Crear nuevo almacén</button>
        <button type = "button" class = "btn btn-success m-4" onclick="location.href='{{action('ControllerAlmacen@todos')}}'">Mostrar todos los almacenes</button>
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
        @foreach ($almacenes as $almacen)
            <tr>
                <td>{{ $almacen->nombreAlmacen }} </td>
                <td>{{ $almacen->tipoAlmacen }} </td>
                <td>{{ $almacen->capacidad }} </td>
                <td>{{ $almacen->encargado }} </td>
                <!-- botón editar almacén -->
                <td><a href="{{action('ControllerProducto@prod', ['id' => $almacen->id])}}">ver</a></td>
                <!-- botón editar almacén -->
                <td><a href="{{action('ControllerAlmacen@update', ['id' => $almacen->id])}}">editar</a></td>
                <!-- botón borrar almacén -->
                <td><a href="{{action('ControllerAlmacen@delete', ['id' => $almacen->id])}}">borrar</a></td>
            </tr>
        @endforeach 
    </table>
@endsection
