<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class KendaraanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Room::create([
            'name' => 'Ruangan Media',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
        
    }
}
