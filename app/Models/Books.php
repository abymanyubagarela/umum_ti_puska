<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Books extends Model
{
    use HasFactory;
    protected $guarded = [];
    private static $templateForm = [
        ["name" => "book_number", "label" => "Nomor Buku", "type" => "input", "required" => true],
        ["name" => "book_title", "label" => "Judul Buku", "type" => "input", "required" => true],
        ["name" => "book_firstname", "label" => "Nama Depan", "type" => "input", "required" => true],
        ["name" => "book_lastname", "label" => "Nama Belakang", "type" => "input", "required" => true],
        ["name" => "book_author", "label" => "Penulis", "type" => "input", "required" => true],
        ["name" => "book_publisher", "label" => "Penerbit", "type" => "input", "required" => true],
        ["name" => "book_city", "label" => "Kota", "type" => "input", "required" => true],
        ["name" => "book_year", "label" => "Tahun", "type" => "input", "required" => true],
        ["name" => "book_isbn", "label" => "ISBN", "type" => "input", "required" => false],
        ["name" => "book_class", "label" => "Kelas Buku", "type" => "input", "required" => true],
        ["name" => "book_classcode", "label" => "Kode Kelas", "type" => "input", "required" => true],
        ["name" => "book_subject", "label" => "Subjek Buku", "type" => "input", "required" => true],
        ["name" => "book_location", "label" => "Lokasi Rak", "type" => "input", "required" => true],
        ["name" => "book_acq", "label" => "Golongan", "type" => "select", "required" => false,
        "children" => [['id' => 'null', 'label' => '-'],['id' => 'Hibah', 'label' => 'Hibah'], ['id' => 'Beli', 'label' => 'Beli']]],
        ["name" => "isBMN", "label" => "Jenis", "type" => "select", "required" => false,
        "children" => [['id' => 'null', 'label' => '-'],['id' => '1', 'label' => 'BMN'], ['id' => '2', 'label' => 'Koleksi Pribadi']]],
        ["name" => "book_nup", "label" => "NUP", "type" => "input", "required" => false],
        ["name" => "book_brand", "label" => "Merek", "type" => "input", "required" => false],
    ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public static function modelSelectOption()
    {
        return Books::all('id', 'book_title', 'book_author')->toArray();
    }
}
