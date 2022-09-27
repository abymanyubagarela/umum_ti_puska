<?php

namespace App\Exports;

use App\Models\Inventories;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportInventories implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $request;

    function __construct($request) {
        $this->request = $request;
    }
    public function collection()
    {
        $query = Inventories::query();
        $requests = $this->request->all();
        $request = $this->request;
        foreach($requests as $key => $value){
            if($key == "_token"){
                continue;
            }
            if($request->has($key)){
                if($key != "all"){
                  $query->where($key, $value);
                }
            }
        }
        return $query->get();
    }

    public function headings(): array
    {
       $columns = Schema::getColumnListing('inventories');
        return $columns;
    }
}
