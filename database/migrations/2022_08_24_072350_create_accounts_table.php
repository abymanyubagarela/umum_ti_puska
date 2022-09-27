<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('accounts', function (Blueprint $table) {
            $table->id();
            $table->string('account_name');
            $table->string('account_nip_bpk')->unique();
            $table->string('account_nip_bkn')->unique();
            $table->string('account_email');
            $table->string('account_handphone')->nullable();
            $table->string('account_unit');
            $table->string('account_role');
            $table->string('account_status')->nullable();
            $table->string('account_pangkat')->nullable();
            $table->string('account_golongan')->nullable();
            $table->string('account_jabatan')->nullable();
            $table->string('account_tmt')->nullable();
            $table->string('account_pendidikan')->nullable();
            $table->string('account_agama')->nullable();
            $table->string('password')->nullable();
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
        Schema::dropIfExists('accounts');
    }
}
