<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class InventoriesloandetailsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $data = array("Peminjaman", "Pengembalian","Pemeriksaan", "Pribadi","Sudah diproses","Belum diproses");
        return [
            //
            'inventoryloan_id' => rand(1,10),
            'inventory_id' => rand(5,50),


        ];
    }
}
