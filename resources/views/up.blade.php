@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row justify-content-center">
    <div class="flex-center position-ref">
      <h1>Modificar almacén</h1>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col-sm-8 offset-sm-2">
      <!-- Va al método del controlador que actualiza el almacén -->
      <form action="{{route('actualizar')}}" method="post">
      @method('put')
      @csrf
      <!-- Formulario para la actualización de los datos del almácen -->
        <input type="hidden" name="idAlmacen" id="idAlmacen" class="form-control" required value="{{ $almacen->id }}">
        <div class="form-group">
          <label for="nombreAlmacen">Nombre almacén:</label>
          <input type="text" name="nombreAlmacen" id="nombreAlmacen" class="form-control" required value="{{ $almacen->nombreAlmacen }}">
        </div>
        <div class="form-group">
          <label for="Tipo">Tipo:</label>
          <input type="text"  name="tipo" id="tipo" class="form-control" required value="{{ $almacen->tipoAlmacen }}">
        </div>
        <div class="form-group">
          <label for="Capacidad">Capacidad:</label>
          <input type="number" min="1" name="capacidad" id="Capacidad" class="form-control" required value="{{ $almacen->capacidad }}">
        </div>
        <div class="form-group">
          <label for="Encargado">Encargado:</label>
          <input type="text" name="encargado" id="Encargado" class="form-control" required value="{{ $almacen->encargado }}">
        </div>
        <!-- Devuelve el id del almacén para poder encontrarlo y editarlo -->
        <input type="hidden" name="id" value = "{{$almacen->id}}">
        
        <button type="submit" class="btn btn-success">Enviar</button>
        <!-- Vuelve al listado si el usuario ya no quiere editar el almacén-->
        <button type="button" onclick="location.href='{{action('ControllerAlmacen@index')}}'" class="btn btn-danger">Volver</button>
      </form>
    </div>
  </div>
</div>
@endsection
