<?php

namespace App\Http\Controllers;

use App\Exports\ExportBooks;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function reportIndexBookPinjam()
    {
        return view('backend.report.reportIndexBookPinjam');
    }

    public function exportReportIndexBookPinjam(Request $request)
    {
        return Excel::download(new ExportBooks($request) , 'Data Peminjaman Buku.xlsx');
    }

    public function reportIndexBookKembali()
    {
        return view('backend.report.reportIndexBookKembali');
    }

    public function exportReportIndexBookKembali(Request $request)
    {   
        return Excel::download(new ExportBooks($request) , 'Data Pengembalian Buku.xlsx');
    }
}
