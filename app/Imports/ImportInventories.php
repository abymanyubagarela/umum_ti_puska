<?php

namespace App\Imports;

use App\Models\Inventories;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportInventories implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Inventories([
            'inventory_name' => $row[0],
            'inventory_nup' => $row[1],
            'inventory_brand' => $row[2],
            'inventory_description' => $row[3],
            'inventory_condition' => $row[4]
        ]);
    }
}
