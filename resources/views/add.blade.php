@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row justify-content-center">
    <div class="flex-center position-ref">
      <h1>Crear nuevo producto</h1>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col-sm-8 offset-sm-2">
      <form action="{{action('ControllerProducto@altaProducto')}}" method="post">
        @method('post')
        @csrf
        <div class="form-group">
          <label for="id">Id:</label>
          <input type="text" name="id" id="id" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="nombre">Nombre:</label>
          <input type="text" name="nombre" id="nombre" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="fechaEntrada">Fecha Entrada:</label>
          <input type="text" name="fechaEntrada" id="fechaEntrada" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="fechaSalida">Fecha Salida:</label>
          <input type="text" name="fechaSalida" id="fechaSalida" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="categoria">Categoria:</label>
          <input type="text" name="categoria" id="categoria" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="cantidad">Cantidad:</label>
          <input type="text" name="cantidad" id="cantidad" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="precio">Precio:</label>
          <input type="text" name="precio" id="precio" class="form-control" required>
        </div>
        <div class="form-group">
          <input type="hidden" name="almacen" id="almacen" class="form-control">
        </div>
        <button type="submit" class="btn btn-success">Enviar</button>
      </form>
    </div>
  </div>
</div>
@endsection