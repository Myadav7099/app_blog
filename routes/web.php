<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CategaryController;
use App\Http\Controllers\CommentController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'home'])->name('home');

// Route::get('/home', [PostController::class, 'index']);
Route::get('/post/add', [PostController::class, 'create'])->name('post.create');
Route::get('/category/add', [CategaryController::class, 'add']);

Route::get('/category/list', [CategaryController::class, 'list']);
Route::post('/category/save', [CategaryController::class, 'save']);
Route::post('/post/save', [PostController::class, 'save']);
Route::get('/post/{id}',[PostController::class,'get']);
Route::get('/comment/delete/{id}',[PostController::class,'delete']);
Route::post('/comment/save', [CommentController::class, 'save']);
Route::get('/home/logout',[PostController::class,'logout']);