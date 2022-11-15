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
        Accounts::create([
            'account_name' => 'Admin',
            'account_nip_bpk' => '2400114512',
            'account_nip_bkn' => '1998012520220310021',
            'account_email' => 'admin@bpk.go.id',
            'account_unit' => 'umum',
            'account_role' => 'Super Admin',
            'password' =>  bcrypt('password')
        ]);
        
        // Accounts::factory(200)->create();
        // Inventories::factory(200)->create();
        // InventoriesLoan::factory(50)->create();
        // InventoriesLoanDetails::factory(100)->create();
    }
}
