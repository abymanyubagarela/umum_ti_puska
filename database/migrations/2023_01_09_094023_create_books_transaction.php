<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTransaction extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books_transaction', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_pegawai');
            $table->foreignId('id_buku');
            $table->date('tanggal_peminjaman')->nullable();
            $table->date('tanggal_harus_kembali')->nullable();
            $table->date('tanggal_pengembalian')->nullable();
            $table->integer('denda')->nullable()->length(100);
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
        Schema::dropIfExists('books_transaction');
    }
}
