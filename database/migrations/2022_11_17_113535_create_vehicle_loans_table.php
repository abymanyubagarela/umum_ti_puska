<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVehicleLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicle_loans', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->foreignId('driver_id');
            $table->foreignId('vehicle_id');
            $table->foreignId('account_id');
            $table->date('tanggal');
            $table->time('waktu');            
            $table->string('tujuan')->length(100);
            $table->string('keperluan')->length(100);
            $table->boolean('is_active')->default(1)->length(1);  
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
        Schema::dropIfExists('vehicle_loans');
    }
}
