<?php

namespace App\Http\Controllers;

use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoan;
use Illuminate\Support\Facades\DB;
use App\Models\InventoriesLoanDetails;

class DashboardControllers extends Controller
{
    //
    public function bmnDashboard()
    {
        $data = [
            'title' => "Data BMN",
            'date' => date('m/d/Y') ,
            'inventory' => Inventories::select('id','inventory_condition','inventory_isborrowed')->get(),
            'inventoryLoan' => InventoriesLoan::select('inventoryloan_status')->get()];

        return view('backend/dashboard/bmn', $data);
    }
}
