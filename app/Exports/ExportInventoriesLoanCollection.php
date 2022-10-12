<?php

namespace App\Exports;

use App\Models\InventoriesLoan;

use App\Models\InventoriesLoanDetails;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportInventoriesLoanCollection implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $request;
    // Get Parameter $request as construct from Controller
    function __construct($request) {
        $this->request = $request;
    }

    public function collection()
    {
        return InventoriesLoanDetails::with(['inventoriesLoan.inventoryloan_penanggung_jawabs','Inventories'])->whereHas('inventoriesLoan', function($q){
                    $q->where('inventories_loans.inventoryloan_tglpeminjaman', '>=', $this->request['dateFrom'])->where('inventories_loans.inventoryloan_tglpeminjaman', '<=', $this->request['dateNext']);
                })->orderBy('inventoryloan_id','asc')->get();
    }

    public function headings(): array
    {
       $columns = Schema::getColumnListing('InventoriesLoanDetails');
        return $columns;
    }
}
