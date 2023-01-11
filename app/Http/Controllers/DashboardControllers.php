<?php

namespace App\Http\Controllers;

use App\Models\Books;
use App\Models\BookTrx;
use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoan;
use Illuminate\Support\Facades\DB;
use App\Models\InventoriesLoanDetails;
use PhpOffice\PhpWord\Writer\HTML\Part\Body;

class DashboardControllers extends Controller
{
    public function bmnDashboard()
    {
        $data = [
            'title' => "Data BMN",
            'date' => date('m/d/Y') ,
            'inventory' => Inventories::select('id','inventory_condition','inventory_isborrowed')->get(),
            'inventoryBorrowed' => Inventories::where('inventory_isborrowed',0)->count(),
            'inventoryLoan' => InventoriesLoan::select('inventoryloan_status')->get(),
            'inventoryLoanBelumProses' => InventoriesLoan::where('inventoryloan_status','Belum diproses')->count(),
        ];

        return view('backend/dashboard/bmn', $data);
    }

    public function puskaDashboard()
    {
        $data = [
            'date' => date('m/d/Y') ,
            'total_buku' => Books::select('id')->count(),
            'total_isbn' => Books::whereNotNull('book_isbn')->select('id')->count(),
            'total_pinjam' => BookTrx::select('id')->where('status', 2)->count(),
            'total_kembali' => BookTrx::select('id')->where('status', 3)->count(),
            'buku_pinjam' => BookTrx::latest()->take(10)->where('status', 2)->with(['Accounts', 'Books'])->get(),
            'buku_kembali' => BookTrx::latest()->take(10)->where('status', 3)->with(['Accounts', 'Books'])->get(),
        ];

        return view('backend/dashboard/puska', $data);
    }
}
