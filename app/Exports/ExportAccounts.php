<?php

namespace App\Exports;

use App\Models\Accounts;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportAccounts implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Accounts::all();
    }

    public function headings(): array
    {
       $columns = Schema::getColumnListing('accounts');
        return $columns;
    }
}
