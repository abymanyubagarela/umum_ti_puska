<?php
use App\Models\InventoriesLoan;

use Illuminate\Support\Facades\Route;
use App\Models\InventoriesLoanDetails;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AccountsController;

use App\Http\Controllers\DashboardControllers;
use App\Http\Controllers\DriversController;
use App\Http\Controllers\InventoriesLoanController;
use App\Http\Controllers\Telegram\TelegramBotController;
use App\Http\Controllers\InventoriesLoanDetailsController;
use App\Http\Controllers\Users\UsersInventoriesLoanController;
use App\Http\Controllers\InventoriesController as InventoriesControllers;
use App\Http\Controllers\InventoriesCrashController;
use App\Http\Controllers\RoomController;
use App\Http\Controllers\Users\UserCrashController;
use App\Http\Controllers\RoomLoanController;
use App\Http\Controllers\RoomLoanDetailsController;
use App\Http\Controllers\Users\UsersRoomLoanController;
use App\Http\Controllers\EquipmentController;
use App\Http\Controllers\KendaraanController;
use App\Http\Controllers\VehicleLoanController;
use App\Models\VehicleLoan;

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

Route::get('/', [LoginController::class , 'index']);

Route::get('/login', [LoginController::class , 'index'])->name('login');
Route::post('/backend/login', [LoginController::class , 'authenticate']);
Route::post('/logout', [LoginController::class , 'logout']);
Route::get('/tes', [InventoriesLoanController::class , 'ZipArchiveExample']);

Route::get('/peminjaman-kendaraan', function(){
    return view('frontend.peminjaman-kendaraan', [
        'title' => 'Peminjaman Kendaraan',

    ]);

});

Route::group(['middleware' => 'auth'], function ()
{
    Route::get('/backend/dashboard', function ()
    {
        return view('backend/dashboard/main');
    })->name('dashboard');
    Route::get('/backend/getDataInventoryLoanDashboard',[InventoriesLoanController::class, 'getDataInventoryLoanDashboard']);
    Route::get('/backend/bmn/dashboard', [DashboardControllers::class , 'bmnDashboard']);
    //Inventories--------------------------------------------------------
    Route::get('/backend/inventories', [InventoriesControllers::class , 'index']);
    Route::post('backend/inventories/get-datatable', [InventoriesControllers::class , 'getDataTableInventories'])->name('inventories.list');
    Route::post('backend/inventories/get-datatableInventory', [InventoriesControllers::class , 'getDataTableInventoriesLoan'])->name('inventories.listloan');
    Route::post('/backend/inventories/import-inventories', [InventoriesControllers::class , 'importInventories'])->name('import-inventories');
    Route::post('/backend/inventories/export-inventories', [InventoriesControllers::class , 'exportInventories'])->name('export-inventories');
    Route::post('/backend/inventories/showData', [InventoriesControllers::class , 'showData']);

    // Accounts
    Route::post('/backend/accounts/import-accounts', [AccountsController::class , 'importAccounts'])->name('import-accounts');
    Route::post('/backend/accounts/export-accounts', [AccountsController::class , 'exportAccounts'])->name('export-accounts');
    Route::post('backend/accounts/get-datatable', [AccountsController::class , 'getDataTableAccounts'])->name('account.list');
    Route::post('backend/accounts/passwordUpdate/{id}', [AccountsController::class , 'passwordUpdate']);
    Route::post('/backend/accounts/gantiPassword', [AccountsController::class , 'passwordUpdateUser'])->name('change-user-password');

    //Pinjam BMN-------------------------------------------------------
    Route::post('/backend/inventoriesLoan/import-accounts', [InventoriesLoanController::class , 'importInventoriesLoan'])->name('import-InventoriesLoan');
    Route::post('/backend/inventoriesLoan/export-accounts', [InventoriesLoanController::class , 'exportInventoriesLoan'])->name('export-InventoriesLoan');
    Route::post('/backend/inventoriesLoan/import-bmntransactiondetil', [InventoriesLoanController::class , 'importInventoriesLoanDetail'])->name('import-InventoriesLoanDetail');
    Route::post('/backend/inventoriesLoan/export-bmntransactiondetil', [InventoriesLoanController::class , 'exportInventoriesLoanDetail'])->name('export-InventoriesLoanDetail');
    Route::post('backend/inventoriesLoan/get-datatable', [InventoriesLoanController::class , 'getDataInventoriesLoan'])->name('InventoriesLoan.list');

    // BMN Details
    Route::post('backend/inventoriesLoanDetails/get-datatable/{inventoriesLoanDetails}', [InventoriesLoanDetailsController::class , 'getDataTableInventoriesLoanDetails']);

    Route::resource('/backend/inventoriesLoan', InventoriesLoanController::class);
    Route::resource('/backend/inventoriesLoanDetails', InventoriesLoanDetailsController::class);
    Route::resource('/backend/inventories', InventoriesControllers::class);
    Route::resource('/backend/accounts', AccountsController::class);

    Route::get('/pinjam-bmn', [UsersInventoriesLoanController::class , 'index']);
    Route::get('/pinjam-bmn/create', [UsersInventoriesLoanController::class , 'create']);
    Route::post('/pinjam-bmn/getdata', [UsersInventoriesLoanController::class , 'getDataInventoriesLoan'])->name('UserInventoriesLoan.list');
    Route::post('/pinjam-bmn', [UsersInventoriesLoanController::class , 'store']);
    Route::get('/pinjam-bmn/{inventoriesLoan}/edit', [UsersInventoriesLoanController::class , 'edit']);
    Route::put('/pinjam-bmn/{inventoriesLoan}', [UsersInventoriesLoanController::class , 'update']);
    Route::delete('/pinjam-bmn/{inventoriesLoan}', [UsersInventoriesLoanController::class , 'destroy']);

    // Export to Word
    Route::get('/pinjam-bmn/{inventoriesLoan}/generate-bast/', [InventoriesLoanController::class , 'generateBAST']);
    Route::get('/pinjam-bmn/{inventoriesLoan}/generate-bap/', [InventoriesLoanController::class , 'generateBAP']);
    Route::get('/backend/inventoriesLoan/{inventoriesLoan}/generate-bast/', [InventoriesLoanController::class , 'generateBAST']);
    Route::get('/backend/inventoriesLoan/{inventoriesLoan}/generate-bap/', [InventoriesLoanController::class , 'generateBAP']);
    Route::get('/generate-bap/{inventoriesLoan}', [InventoriesLoanController::class , 'generateBAP']);

    // Report BMN
    Route::get('/backend/bmn-reports',[InventoriesLoanController::class,'reportBMNIndex']);
    Route::post('/backend/bmn-reports/export',[InventoriesLoanController::class,'exportInventoriesLoan'])->name('exportInventoriesLoan');
    Route::post('/backend/bmn-reports/exportLoanFile',[InventoriesLoanController::class,'ZipArchiveInventoriesLoan'])->name('exportInventoriesLoanFile');

    ############################## KERUSAKAN BMN ##############################

    Route::get('/backend/kerusakan-bmn/dashboard', [InventoriesCrashController::class , 'dashboardView'])->name('inventoriesCrash.dashboard');

    Route::resource('/backend/inventoriesCrash', InventoriesCrashController::class);
    Route::post('backend/inventoriesCrash/get-datatable', [InventoriesCrashController::class , 'getDataTableProperty'])->name('inventoriesCrash.list');
    Route::get('/backend/kerusakan-reports',[InventoriesCrashController::class,'reportIndex'])->name('inventoriesCrash.report');
    Route::post('/backend/inventoriesCrash/export-reports', [InventoriesCrashController::class , 'exportReport'])->name('inventoriesCrash.export');

    Route::resource('/kerusakan-bmn/', UserCrashController::class);
    Route::get('/kerusakan-bmn/{userCrash}/edit', [UserCrashController::class , 'edit']);
    Route::put('/kerusakan-bmn/{userCrash}', [UserCrashController::class , 'update']);
    Route::delete('/kerusakan-bmn/{userCrash}', [UserCrashController::class , 'destroy']);
    Route::post('kerusakan-bmn/get-datatable', [UserCrashController::class , 'getDataTableProperty'])->name('UserCrash.list');

    ############################## Peminjaman Ruangan ##############################

    Route::resource('/backend/rooms', RoomController::class);
    Route::post('backend/rooms/get-datatable', [RoomController::class , 'getDataTableRooms'])->name('rooms.list');

    Route::resource('/backend/roomLoan', RoomLoanController::class);
    Route::post('backend/roomLoan/get-datatable', [RoomLoanController::class , 'getDataTableProperty'])->name('roomLoan.list');

    Route::resource('/backend/roomLoanDetails', RoomLoanDetailsController::class);
    Route::post('backend/roomLoanDetails/get-datatable/{request}', [RoomLoanDetailsController::class , 'getDataTableProperty']);

    Route::resource('/pinjam-ruang', UsersRoomLoanController::class);
    Route::get('/pinjam-ruang/{roomLoan}/edit', [UsersRoomLoanController::class , 'edit']);
    Route::put('/pinjam-ruang/{roomLoan}', [UsersRoomLoanController::class , 'update']);
    Route::delete('/pinjam-ruang/{roomLoan}', [UsersRoomLoanController::class , 'destroy']);
    Route::post('pinjam-ruang/get-datatable', [UsersRoomLoanController::class , 'getDataTableProperty'])->name('userRoom.list');

    ############################## Equipment ##############################
    Route::resource('/backend/equipments', EquipmentController::class);
    Route::post('backend/equipments/get-datatable', [EquipmentController::class , 'getDataTable'])->name('equipments.list');
    Route::post('backend/equipments/get-equipments', [EquipmentController::class , 'getDataTableEquipment'])->name('equipments.detail');

    ############################## Kendaraan ##############################
    Route::resource('/backend/kendaraan', KendaraanController::class);
    Route::post('backend/kendaraan/get-datatable', [KendaraanController::class , 'getDataTable'])->name('kendaraans.list');
    Route::resource('/backend/driver', DriversController::class);
    Route::post('backend/driver/get-datatable', [DriversController::class , 'getDataTable'])->name('driver.list');
    Route::resource('/backend/vehicleLoan', VehicleLoanController::class);
    Route::post('backend/vehicleLoan/get-datatable', [VehicleLoanController::class , 'getDataTableProperty'])->name('vehicleLoan.list');
    Route::get('/backend/pinjam-kendaraan-reports',[VehicleLoanController::class,'reportIndex'])->name('vehicleLoan.report');
    Route::post('/backend/vehicleLoan/export-reports', [VehicleLoanController::class , 'exportReport'])->name('vehicleLoan.export');
});

