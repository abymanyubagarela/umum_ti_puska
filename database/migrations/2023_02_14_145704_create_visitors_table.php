<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

class CreateVisitorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visitors', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->default(substr(Hash::make('Ymdhis'),-5));
            $table->foreignId('account_id')->length(100)->nullable();
            $table->string('reason_id')->length(100);
            $table->integer('rate')->length(1)->default(1);
            $table->integer('type')->length(1)->default(1);
            $table->string('name')->length(100)->nullable();
            $table->string('email')->length(100)->nullable();
            $table->string('phone')->length(100)->nullable();
            $table->integer('instansi_id')->length(100)->nullable();
            $table->string('instansi')->length(100)->nullable();
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
        Schema::dropIfExists('visitors');
    }
}
