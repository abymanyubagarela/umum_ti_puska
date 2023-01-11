<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('book_number');
            $table->string('book_title');
            $table->string('book_firstname')->nullable();
            $table->string('book_lastname')->nullable();
            $table->string('book_author')->nullable();
            $table->string('book_publisher')->nullable();
            $table->string('book_city')->nullable();
            $table->string('book_year')->nullable();
            $table->string('book_isbn')->nullable();
            $table->string('book_class')->nullable();
            $table->string('book_subject')->nullable();
            $table->string('book_classcode')->nullable();
            $table->string('book_acq')->nullable();
            $table->string('book_location')->nullable();
            $table->string('book_nup')->nullable();
            $table->string('book_brand')->nullable();
            $table->string('book_image')->nullable();
            $table->string('book_createdby')->nullable();
            $table->string('book_updatedby')->nullable();
            $table->boolean('book_isavailable')->default('1');
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
        Schema::dropIfExists('books');
    }
}
