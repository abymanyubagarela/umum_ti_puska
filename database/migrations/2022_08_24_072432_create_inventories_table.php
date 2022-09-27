<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInventoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventories', function (Blueprint $table) {
            $table->id();
            $table->string('inventory_name');
            $table->string('inventory_description');
            $table->string('inventory_condition');
            $table->string('inventory_nup')->unique();
            $table->string('inventory_brand')->nullable();
            $table->string('inventory_image')->nullable();
            $table->string('inventory_createdby')->nullable();
            $table->string('inventory_updatedby')->nullable();
            $table->boolean('inventory_isborrowed')->default('0');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('inventories');
    }
}
