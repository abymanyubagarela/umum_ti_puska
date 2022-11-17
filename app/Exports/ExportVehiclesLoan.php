<?php

namespace App\Exports;

use App\Models\InventoriesCrash;
use App\Models\VehicleLoan;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportVehiclesLoan implements FromView
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
            
            $data = [
                'details' => VehicleLoan::with(['Accounts','Drivers','Vehicles'])
                    ->whereHas('vehicleLoan', function($q){
                        $q->where('vehicle_loans.created_at', '>=', $this->request['dateFrom'])
                        ->where('vehicle_loans.created_at', '<=', $this->request['dateNext']);
                    })->orderBy('vehicle_loans.id','asc')->get(),
                'dateMin' => $request['dateFrom'],
                'dateMax' => $request['dateNext']
            ];

            return view('backend.vehicleLoan.export', $data);
         }
    }
}
