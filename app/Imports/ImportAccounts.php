<?php

namespace App\Imports;

use App\Models\Accounts;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class ImportAccounts implements ToModel,WithStartRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Accounts([
            //
            'account_name' => $row[0],
            'account_nip_bpk' => $row[1],
            'account_nip_bkn' => $row[2],
            'account_email' => $row[3],
            'account_unit' => $row[5],
            'account_role' => $row[6],
            'password'=> $row[14]
        ]);
    }

    public function startRow(): int
    {
        return 2;
    }
}
