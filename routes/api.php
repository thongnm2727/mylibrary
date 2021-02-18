<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BookController;
use App\Http\Controllers\API\BookCopyController;
use App\Http\Controllers\API\BookRequestController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("books", [BookController::class, "index"]);
Route::group(['prefix' => 'book'], function(){
    Route::post('add_book', [BookController::class, "add"]);
    Route::get('detail/{id}', [BookController::class, "detail"]);
    Route::delete('delete/{id}', [BookController::class, "delete"]);
    Route::post('update/{id}', [BookController::class, "update"]);
});

Route::get("book_copies/{book_id}", [BookCopyController::class, "getAll"]);
Route::group(['prefix' => 'book_copy'], function(){
    Route::delete('delete/{id}', [BookCopyController::class, "delete"]);
    Route::post('add/{book_id}', [BookCopyController::class, "add"]);
});

Route::get("book_requests", [BookRequestController::class, "getAll"]);
Route::group(['prefix' => 'book_request'], function(){
    Route::post('add/{book_copy_id}', [BookRequestController::class, "add"]);
});