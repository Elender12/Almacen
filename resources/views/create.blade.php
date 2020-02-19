@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row justify-content-center">
    <div class="flex-center position-ref">
      <h1>Crear nuevo almacén</h1>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col-sm-8 offset-sm-2">
      <form action="{{route('darDeAlta')}}" method="post">
        @csrf
        <div class="form-group">
          <label for="nombreAlmacen">Nombre almacén:</label>
          <input type="text" name="nombreAlmacen" id="nombreAlmacen" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="Tipo">Tipo:</label>
          <input type="text" name="tipo" id="tipo" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="Capacidad">Capacidad:</label>
          <input type="text" name="capacidad" id="Capacidad" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="Encargado">Encargado:</label>
          <input type="text" name="encargado" id="Encargado" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success">Enviar</button>
      </form>
    </div>
  </div>
</div>
@endsection