<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\LoginController;
use App\Http\Controllers\AccountsController;
use App\Http\Controllers\DashboardControllers;
use App\Http\Controllers\InventoriesLoanController;

use App\Http\Controllers\InventoriesLoanDetailsController;
use App\Http\Controllers\Users\UsersInventoriesLoanController;
use App\Http\Controllers\InventoriesController as InventoriesControllers;
use App\Http\Controllers\Telegram\TelegramBotController;

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

Route::get('/', function ()
{
    return view('/backend/login');
});

Route::get('/telegramTest', [TelegramBotController::class , 'terbilangTest']);

Route::get('/login', [LoginController::class , 'index'])->name('login');
Route::post('/backend/login', [LoginController::class , 'authenticate']);
Route::post('/logout', [LoginController::class , 'logout']);

Route::group(['middleware' => 'auth'], function ()
{
    Route::get('/backend/dashboard', function ()
    {
        return view('backend/dashboard/main');
    });
    Route::get('/backend/bmn/dashboard', [DashboardControllers::class , 'bmnDashboard']);
    //Inventories--------------------------------------------------------
    Route::get('/backend/inventories', [InventoriesControllers::class , 'index']);
    Route::get('backend/inventories/get-datatable', [InventoriesControllers::class , 'getDataTableInventories'])->name('inventories.list');
    Route::get('backend/inventories/get-datatableInventory', [InventoriesControllers::class , 'getDataTableInventoriesLoan'])->name('inventories.listloan');
    Route::post('/backend/inventories/import-inventories', [InventoriesControllers::class , 'importInventories'])->name('import-inventories');
    Route::post('/backend/inventories/export-inventories', [InventoriesControllers::class , 'exportInventories'])->name('export-inventories');
    Route::post('/backend/inventories/showData', [InventoriesControllers::class , 'showData']);

    // Accounts
    Route::post('/backend/accounts/import-accounts', [AccountsController::class , 'importAccounts'])->name('import-accounts');
    Route::post('/backend/accounts/export-accounts', [AccountsController::class , 'exportAccounts'])->name('export-accounts');
    Route::get('backend/accounts/get-datatable', [AccountsController::class , 'getDataTableAccounts'])->name('account.list');
    Route::post('backend/accounts/passwordUpdate/{id}', [AccountsController::class , 'passwordUpdate']);
    Route::post('/backend/accounts/gantiPassword', [AccountsController::class , 'passwordUpdateUser'])->name('change-user-password');

    //Pinjam BMN-------------------------------------------------------
    Route::post('/backend/inventoriesLoan/import-accounts', [InventoriesLoanController::class , 'importInventoriesLoan'])->name('import-InventoriesLoan');
    Route::post('/backend/inventoriesLoan/export-accounts', [InventoriesLoanController::class , 'exportInventoriesLoan'])->name('export-InventoriesLoan');
    Route::post('/backend/inventoriesLoan/import-bmntransactiondetil', [InventoriesLoanController::class , 'importInventoriesLoanDetail'])->name('import-InventoriesLoanDetail');
    Route::post('/backend/inventoriesLoan/export-bmntransactiondetil', [InventoriesLoanController::class , 'exportInventoriesLoanDetail'])->name('export-InventoriesLoanDetail');
    Route::get('backend/inventoriesLoan/get-datatable', [InventoriesLoanController::class , 'getDataInventoriesLoan'])->name('InventoriesLoan.list');

    // BMN Details
    Route::get('backend/inventoriesLoanDetails/get-datatable/{inventoriesLoanDetails}', [InventoriesLoanDetailsController::class , 'getDataTableInventoriesLoanDetails']);

    Route::resource('/backend/inventoriesLoan', InventoriesLoanController::class);
    Route::resource('/backend/inventoriesLoanDetails', InventoriesLoanDetailsController::class);
    Route::resource('/backend/inventories', InventoriesControllers::class);
    Route::resource('/backend/accounts', AccountsController::class);

    Route::get('/pinjam-bmn', [UsersInventoriesLoanController::class , 'index']);
    Route::get('/pinjam-bmn/create', [UsersInventoriesLoanController::class , 'create']);
    Route::get('/pinjam-bmn/getdata', [UsersInventoriesLoanController::class , 'getDataInventoriesLoan'])->name('UserInventoriesLoan.list');
    Route::post('/pinjam-bmn', [UsersInventoriesLoanController::class , 'store']);
    Route::get('/pinjam-bmn/{inventoriesLoan}/edit', [UsersInventoriesLoanController::class , 'edit']);
    Route::put('/pinjam-bmn/{inventoriesLoan}', [UsersInventoriesLoanController::class , 'update']);

    // Export to Word
    Route::get('/pinjam-bmn/{inventoriesLoan}/generate-bast/', [InventoriesLoanController::class , 'generateBAST']);
    Route::get('/pinjam-bmn/{inventoriesLoan}/generate-bap/', [InventoriesLoanController::class , 'generateBAP']);
    Route::get('/backend/inventoriesLoan/{inventoriesLoan}/generate-bast/', [InventoriesLoanController::class , 'generateBAST']);
    Route::get('/generate-bap/{inventoriesLoan}', [InventoriesLoanController::class , 'generateBAP']);
});

