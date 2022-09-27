<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInventoriesLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventories_loans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('account_id');
            $table->foreignId('inventoryloan_penanggung_jawab');
            $table->string('inventoryloan_type');
            $table->string('inventoryloan_tujuan');
            $table->string('inventoryloan_status');
            $table->string('inventoryloan_duration');
            $table->string('inventoryloan_tgltransaksi')->nullable();
            $table->string('inventoryloan_tglpengembalian')->nullable();
            $table->string('inventoryloan_file')->nullable();
            $table->string('inventoryloan_createdby')->nullable();
            $table->string('inventoryloan_updatedby')->nullable();
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
        Schema::dropIfExists('inventories_loans');
    }
}
