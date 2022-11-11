<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Accounts;
use App\Models\Inventories;
use App\Models\InventoriesLoan;
use App\Models\InventoriesLoanDetails;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();
        Accounts::create([
            'account_name' => 'Syahri Ramadhani',
            'account_nip_bpk' => '2400114512',
            'account_nip_bkn' => '1998012520220310021',
            'account_email' => 'syahri.ramadhani@bpk.go.id',
            'account_unit' => 'umum',
            'account_role' => 'Super Admin',
            'password' =>  bcrypt('password')
        ]);
        Accounts::create([
            'account_name' => 'Abimanyu Bagarela Anjaya Putra',
            'account_nip_bpk' => '240010317',
            'account_nip_bkn' => '199506102020121001',
            'account_email' => 'abimanyu.putra@bpk.go.id',
            'account_unit' => 'umum',
            'account_role' => 'Super Admin',
            'password' =>  bcrypt('password')
        ]);
        Accounts::create([
            'account_name' => 'Dwi Ferdiansyah',
            'account_nip_bpk' => '2400114521',
            'account_nip_bkn' => '198103152008081001',
            'account_email' => 'syahri.ramadhani@bpk.go.id',
            'account_unit' => 'Subbagian Umum dan Teknologi Informasi',
            'account_role' => 'Pejabat Struktural',
            'password' =>  bcrypt('password')
        ]);

        Accounts::factory(200)->create();
        Inventories::factory(200)->create();
        InventoriesLoan::factory(50)->create();
        InventoriesLoanDetails::factory(100)->create();
    }
}
