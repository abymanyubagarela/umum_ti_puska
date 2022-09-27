<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class InventoriesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $data = array("epson", "HP","fujitsu", "baik","rusak");
        return [
            //
            'inventory_name' => $this->faker->word(mt_rand(4,8)),
            'inventory_description' => $this->faker->word(mt_rand(4,8)),
            'inventory_condition' => $data[rand(3,4)],
            'inventory_brand' => $data[rand(0,2)],
            'inventory_nup' => $this->faker->randomNumber(8, true),
            'inventory_isborrowed' => rand(0,1)

        ];
        //
    }
}
