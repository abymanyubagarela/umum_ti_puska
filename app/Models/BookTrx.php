<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookTrx extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'books_transaction';


    public static function getTemplateFormData()
    {
        return [
            ["name" => "account_id", "label" => "Nama Peminjam", "type" => "text", "required" => true, "children" => Accounts::AccountSelectOption()],
            ["name" => "tanggal_peminjaman", "label" => "Tanggal Peminjaman", "type" => "date", "required" => true],
            ["name" => "tanggal_harus_kembali", "label" => "Tanggal Harus Kembali", "type" => "date", "required" => true],
            ["name" => "tanggal_pengembalian", "label" => "Tanggal Pengembalian", "type" => "date", "required" => true],
            ["name" => "denda", "label" => "Denda", "type" => "number", "required" => true],
            ["name" => "status", "label" => "Status", "type" => "text", "required" => true, "children" => [
                ['id' => '1', 'label' => 'Permintaan'], 
                ['id' => '2', 'label' => 'Peminjaman'], 
                ['id' => '3', 'label' => 'Pengembalian'], 
                ['id' => '4', 'label' => 'Selesai'],
                ]
            ],   
        ];
    }

    public function Books()
    {
        return $this->belongsTo(Books::class , 'id_buku');
    }

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'id_pegawai');
    }
}
