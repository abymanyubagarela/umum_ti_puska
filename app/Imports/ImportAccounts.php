<?php

namespace App\Imports;

use App\Models\Accounts;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportAccounts implements ToModel
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
            'account_unit' => $row[4],
            'account_role' => $row[5],
            'account_tmt' => $row[6],
            'account_status' => $row[7],
            'account_golongan' => $row[8],
            'account_jabatan' => $row[9],
            'account_pendidikan' => $row[10],
            'account_agama' => $row[11],
        ]);
    }
}
