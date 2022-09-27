<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AccountsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $data = array("epson", "HP","fujitsu", "baik","rusak");
        $dataUnit = array("Umum","SDM","Subauditor");
        $dataPangkat = array("Penata Muda", "Pembina Utama");
        $dataGolongan = array("III A","IV B");
        $dataJabatan = array("Pemeriksa","Pranata Komputer","Pelaksana");
        $dataPendidikan = array("S1","S2","D3");
        $dataStatus = array("PNS","Non-PNS");
        $dataAgama = array("Islam","Katholik");
        return [
            //
            'account_name' => $this->faker->name(),
            'account_nip_bpk' => $this->faker->randomNumber(6, true),
            'account_nip_bkn' => $this->faker->randomNumber(8, true),
            'account_email' => $this->faker->email(),
            'account_unit' => $dataUnit[rand(0,2)],
            'account_role' => "user",
            'account_handphone' => $this->faker->phoneNumber(),
            'account_status' => $dataStatus[rand(0,1)],
            'account_pangkat' => $dataPangkat[rand(0,1)],
            'account_golongan' =>  $dataGolongan[rand(0,1)],
            'account_jabatan' => $dataJabatan[rand(0,2)],
            'account_tmt' => $this->faker->dateTimeThisDecade('+5 years'),
            'account_pendidikan' => $dataPendidikan[rand(0,2)],
            'account_agama' => $dataAgama[rand(0,1)],
            'password' =>  bcrypt('password'),

        ];
    }
}
