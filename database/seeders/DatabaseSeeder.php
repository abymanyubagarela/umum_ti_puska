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
        // \App\Models\User::factory(10)->create();
        Accounts::create([
            'account_name' => 'Syahri Ramadhani',
            'account_nip_bpk' => '240011451',
            'account_nip_bkn' => '199801252022031001',
            'account_email' => 'syahri.ramadhani@bpk.go.id',
            'account_unit' => 'umum',
            'account_role' => 'admin',
        ]);

        Inventories::create([
            'inventory_name' => 'inventories',
            'inventory_description' => ' Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ullam sequi at velit est aut dicta dolorem nobis dolorum impedit facere.',
            'inventory_condition' => 'baik',
            'inventory_nup' => 'test',
            'inventory_brand' => 'Epson',
        ]);

        Accounts::factory(200)->create();
        Inventories::factory(200)->create();
        InventoriesLoan::factory(10)->create();
        InventoriesLoanDetails::factory(50)->create();
    }
}
