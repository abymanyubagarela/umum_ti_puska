<?php

namespace App\Exports;

use App\Models\InventoriesCrash;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportInventoriesCrash implements FromView
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
                'details' => InventoriesCrash::with(['Accounts'])
                            ->with(['Inventories'])
                            ->with(['Rooms'])
                            ->whereHas('inventoriesCrash', function($q){
                                $q->where('inventories_crashes.created_at', '>=', $this->request['dateFrom'])
                                ->where('inventories_crashes.created_at', '<=', $this->request['dateNext']);
                            })->orderBy('inventories_crashes.id','asc')->get(), 
                'dateMin' => $request['dateFrom'],
                'dateMax' => $request['dateNext']
            ];

            return view('backend.inventoriesCrash.export', $data);
         }
    }
}
