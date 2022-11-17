<?php

use App\Http\Controllers\Api\VehicleLoanApiController;
use App\Models\Accounts;
use App\Models\Drivers;
use App\Models\Kendaraan;
use App\Models\VehicleLoan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('vehicle-loan', [VehicleLoanApiController::class, 'index']);
 
Route::get('vehicle-loan/{id}', [VehicleLoanApiController::class, 'show']);

Route::post('vehicle-loan/', [VehicleLoanApiController::class, 'store']);

Route::put('vehicle-loan/{id}', [VehicleLoanApiController::class, 'update']);

Route::delete('vehicle-loan/{id}', [VehicleLoanApiController::class, 'destroy']);

Route::get('vehicles', function() {
    return Kendaraan::all();
});

Route::get('accounts', function() {
    return Accounts::all();
});

Route::get('drivers', function() {
    return Drivers::driversSelectOption();
});