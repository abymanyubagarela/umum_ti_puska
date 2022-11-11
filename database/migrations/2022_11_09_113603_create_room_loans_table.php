<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRoomLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('room_loans', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            $table->foreignId('id_pegawai');
            $table->foreignId('id_ruangan');
            $table->string('kegiatan')->length(100);
            $table->date('tanggal');
            $table->time('waktu');            
            $table->string('detail_ruangan')->nullable()->length(100);
            $table->integer('status')->default(1)->length(1);
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
        Schema::dropIfExists('room_loans');
    }
}
