<?php

namespace Database\Seeders;

use App\Models\Equipment;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class EquipmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Equipment::create([
            'name' => 'Microphone',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Sound System',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Kursi Diklat',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Sofa',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Meja',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Kursi Rapat',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Meja Kerja Narasumber',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Proyektor',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Layar Proyektor',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Laptop',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Backdrop',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);

        Equipment::create([
            'name' => 'Meja Bundar',
            'slug' => substr(Hash::make('Ymdhis'),-5)
        ]);
    }
}
