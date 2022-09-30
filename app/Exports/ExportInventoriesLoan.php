<?php

namespace App\Exports;

use App\Models\InventoriesLoan;

use Illuminate\Contracts\View\View;
use App\Models\InventoriesLoanDetails;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportInventoriesLoan implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $request;

    function __construct($request) {
        $this->request = $request;
    }

    public function view(): View
    {
        $request = $this->request;

        if($request['dateFrom']){
            return view('backend.inventoriesLoan.export', [
                'inventoriesLoanDetails' =>InventoriesLoanDetails::with(['inventoriesLoan.inventoryloan_penanggung_jawabs','Inventories'])
                ->whereHas('inventoriesLoan', function($q){
                    $q->where('inventories_loans.inventoryloan_tglpeminjaman', '>=', $this->request['dateFrom'])
                    ->where('inventories_loans.inventoryloan_tglpeminjaman', '<=', $this->request['dateNext']);
                    })
                ->orderBy('inventoryloan_id','asc')->get(),
                'dateMin' => $request['dateFrom'],
                'dateMax' => $request['dateNext']
            ]);
         }
    }
}
