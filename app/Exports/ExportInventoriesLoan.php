<?php

namespace App\Exports;

use App\Models\InventoriesLoan;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportInventoriesLoan implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return InventoriesLoan::all();
    }
}
