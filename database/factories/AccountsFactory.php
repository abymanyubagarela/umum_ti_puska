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
        $dataUnit = array("Umum","SDM","Subauditor");
        return [
            //
            'account_name' => $this->faker->name(),
            'account_nip_bpk' => $this->faker->randomNumber(6, true),
            'account_nip_bkn' => $this->faker->randomNumber(8, true),
            'account_email' => $this->faker->email(),
            'account_unit' => $dataUnit[rand(0,2)],
            'account_role' => "user",
            'account_handphone' => $this->faker->phoneNumber(),
            'password' =>  bcrypt('password'),

        ];
    }
}
