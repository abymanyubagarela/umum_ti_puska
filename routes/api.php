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

Route::get('vehicles', function(Request $request) {
    $q = $request->query('term');
    return Kendaraan::where('nomor', 'LIKE', '%'.$q.'%')->orWhere('nomor', 'LIKE', '%'.$q.'%')->get();
});

Route::get('accounts', function(Request $request) {
    $q = $request->query('term');
    return Accounts::where('account_name', 'LIKE', '%'.$q.'%')->select('id','account_name')->get();
});

Route::get('drivers', function(Request $request) {
    $q = $request->query('term');

    return Drivers::driversSelectOption($q);
});