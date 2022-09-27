<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class InventoriesloanFactory extends Factory
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
            'account_id' => rand(5,20),
            'inventoryloan_penanggung_jawab' => rand(5,20),
            'inventoryloan_type' => $data[rand(0,1)],
            'inventoryloan_tujuan' => $data[rand(2,3)],
            'inventoryloan_status' => $data[rand(4,5)],
            'inventoryloan_tgltransaksi' => $this->faker->dateTimeThisYear(),
            'inventoryloan_duration' => rand(0,30),
            'inventoryloan_file' => $this->faker->word(mt_rand(4,8)),
            'inventoryloan_createdby' => $data[rand(0,2)],
            'inventoryloan_updatedby' => $data[rand(0,2)]

        ];
    }
}
