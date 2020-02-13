@extends('layouts.app')

@section('content')
    <div class="flex-center position-ref">
        <h1>Lista de almacenes</h1>   
    </div>

    <table class="flex-center position-ref">
        <tr>
            <th>Nombre almacen</th>
            <th>Tipo almacen</th>
            <th>Capacidad</th>
            <th>Encargado</th>
        </tr>
        @foreach ($almacenes as $almacen)
            <tr>
                <td>{{ $almacen->nombreAlmacen }} </td>
                <td>{{ $almacen->tipoAlmacen }} </td>
                <td>{{ $almacen->capacidad }} </td>
                <td>{{ $almacen->encargado }} </td>
                <td><a href="{{action('ControllerAlmacen@update', ['id' => $almacen->id])}}">editar</a></td>
            
                <td><a href="{{action('ControllerAlmacen@delete', ['id' => $almacen->id])}}">borrar</a></td>
            </tr>
        @endforeach
    </table>
@endsection
