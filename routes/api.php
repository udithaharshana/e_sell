<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Laravel\Passport\Http\Controllers\AccessTokenController;
use Illuminate\Support\Facades\Artisan;


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
Route::get('/cache', function() {
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('cache:clear');
    //Artisan::call('view:clear');
    Artisan::call('route:clear');

    return 'DONE';
  });

Route::group(['middleware' => ['cors', 'json.response','setdb']], function () {

    Route::post('/login', 'Auth\ApiAuthController@login');
    
    // our routes to be protected will go in here
    Route::middleware('auth:api')->group(function () {
        Route::post('/items', 'ItemController@GetAvailableItems');
        Route::post('/seller_items', 'ItemController@GetSellerItems');
        Route::post('/seller_by_item', 'ItemController@GetSellerByItem');

    });
});

