<?php

namespace App\Http\Controllers;

use App\Models\Accounts;
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
        // dd('x');
        $data = [
            'date' => date('m/d/Y') ,
            'total_buku' => Books::select('id')->count(),
            'total_isbn' => Books::whereNotNull('book_isbn')->select('id')->count(),
            'total_pinjam' => BookTrx::select('id')->where('status', 2)->count(),
            'total_kembali' => BookTrx::select('id')->where('status', 3)->count(),
            'buku_pinjam' => BookTrx::latest()->take(10)->where('status', 2)->with(['Accounts','Books'])->get(),
            'buku_kembali' => BookTrx::latest()->take(10)->where('status', 3)->with(['Accounts','Books'])->get(),
        ];

        return view('backend/dashboard/puska', $data);
    }

    
    public function bukuTamu()
    {
        $data = [
            'date' => date('m/d/Y') ,
            'alasan_in' => [
                ['id' => 0, 'name' =>'Peminjaman-Pengembalian'],
                ['id' => 1, 'name' =>'Membaca Buku/Majalah/Surat Kabar'],
                ['id' => 2, 'name' =>'Mengakses Koleksi Terbitan Digital'],
                ['id' => 3, 'name' =>'mengakses Koleksi Digital'],
                ['id' => 4, 'name' =>'Diskusi'],
                ['id' => 5, 'name' =>'Mengerjakan Tugas'],
                ['id' => 6, 'name' =>'Penelitian'],
                
            ],
            'alasan_out' => [
                ['id' => 1, 'name' =>'Penelitian'],
                ['id' => 2, 'name' =>'Kunjungan Biasa'],
            ],
            'accounts' => Accounts::select('account_name','id')->get(),
            'instansi' => [
                ['id' => 0, 'name' =>'Kementerian/Lembaga'],
                ['id' => 1, 'name' =>'LSM'],
                ['id' => 2, 'name' =>'Perguruan Tinggi'],
                ['id' => 3, 'name' =>'Sekolah Menegah'],
                ['id' => 4, 'name' =>'Media'],
                ['id' => 5, 'name' =>'Umum'],
            ],
        ];

        return view('backend/visitor',$data);
    }
}
