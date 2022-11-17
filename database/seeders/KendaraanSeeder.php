<?php

namespace Database\Seeders;

use App\Models\Kendaraan;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class KendaraanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Kendaraan::create([
            'name' => 'Fortuner',
            'nomor' => 'KU 98',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Kendaraan::create([
            'name' => 'Inova',
            'nomor' => 'KU 1940',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Kendaraan::create([
            'name' => 'Inova',
            'nomor' => 'KU 1244',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Kendaraan::create([
            'name' => 'Inova',
            'nomor' => 'KU 1439',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Kendaraan::create([
            'name' => 'Avanza',
            'nomor' => 'KU 1442',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Kendaraan::create([
            'name' => 'Avanza',
            'nomor' => 'KU 1443',
            'kapasitas' => 2,
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
    }
}
