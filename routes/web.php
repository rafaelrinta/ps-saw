<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HasilController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\NormalisasiController;

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
    return view('welcome');
});

// ALTERNATIF
Route::get('/alternatif', [AlternatifController::class, 'index']);
Route::get('/alternatif/create', [AlternatifController::class, 'create']);
Route::post('/alternatif/store', [AlternatifController::class, 'store']);
Route::get('/alternatif/edit/{id}', [AlternatifController::class, 'edit']);
Route::put('/alternatif/{id}', [AlternatifController::class, 'update']);
Route::get('/alternatif/delete/{id}', [AlternatifController::class, 'destroy']);

// KRITERIA
Route::get('/kriteria', [KriteriaController::class, 'index']);
Route::get('/kriteria/create', [KriteriaController::class, 'create']);
Route::post('/kriteria/store', [KriteriaController::class, 'store']);
Route::get('/kriteria/edit/{id}', [KriteriaController::class, 'edit']);
Route::put('/kriteria/{id}', [KriteriaController::class, 'update']);
Route::get('/kriteria/delete/{id}', [KriteriaController::class, 'destroy']);

// NORMALISASI
Route::get('/normalisasi', [NormalisasiController::class, 'index']);

// HASIL
Route::get('/hasil', [HasilController::class, 'index']);