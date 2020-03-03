@extends('layouts.app')

@section('content')
    <div class="flex-center position-ref">
        <h1>Lista de productos</h1>
    </div>

    <br/><br/>
    <table class="table table-responsive table-hover flex-center position-ref">
        <tr>
            <th>Id </th>
            <th>Nombre </th>
            <th>Entrada</th>
            <th>Salida</th>
            <th>Categoria</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th></th>
        </tr>
        @foreach ($productos as $productos)
            <tr>
                <td>{{ $productos->id }} </td>
                <td>{{ $productos->nombre }} </td>
                <td>{{ $productos->fechaEntrada }} </td>
                <td>{{ $productos->fechaSalida }} </td>
                <td>{{ $productos->categoria }} </td>
                <td>{{ $productos->precio }} </td>
                <td>{{ $productos->cantidad }} </td>
            </tr>
        @endforeach 
    </table>
@endsection
