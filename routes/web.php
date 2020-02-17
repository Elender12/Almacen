<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/indexguest', function () {
    return view('indexguest');
});

Auth::routes();

Route::get('/home', 'ControllerAlmacen@index')->name('home');

Route::get('/home/{id}', 'ControllerAlmacen@delete');

Route::get('/up/{id}', 'ControllerAlmacen@update');
Route::get('/create', 'ControllerAlmacen@create')->name('crear');
Route::post('/create','ControllerAlmacen@altaAlmacen')->name('darDeAlta');


// Route::get('/home/{id}', function ($id) {
//     return 'borrando almacen' . $id;
// });
//Auth::routes();

//Route::get('/home', 'AlmacenController@index')->name('home');
