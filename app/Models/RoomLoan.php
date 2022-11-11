<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomLoan extends Model
{
    use HasFactory;

    protected $guarded = [];

    public static function getTemplateFormData()
    {
        return [
            ["name" => "id_pegawai", "label" => "Nama Pemilik", "type" => "select", "required" => false, "children" => Accounts::AccountSelectOption()],
            ["name" => "id_barang", "label" => "Nama Barang", "type" => "select", "required" => false, "children" => Inventories::InvetoriesSelectOption()],
            ["name" => "detail_kerusakan", "label" => "Detail Kerusakan", "type" => "textarea", "required" => false],
            ["name" => "id_ruangan", "label" => "Lokasi Ruangan", "type" => "select", "required" => false, "children" => Room::RoomSelectOption()],
            ["name" => "detail_ruangan", "label" => "Detail Ruangan", "type" => "textarea", "required" => false], 
            ["name" => "detail_foto", "label" => "Foto", "type" => "file", "required" => false],            
        ];
    }

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'id_pegawai');
    }

    public function Inventories()
    {
        return $this->belongsTo(Inventories::class , 'id_barang');
    }

    public function Rooms()
    {
        return $this->belongsTo(Room::class , 'id_ruangan');
    }

    public function InventoriesCrash()
    {
        return $this->belongsTo(InventoriesCrash::class,'id');
    }
}
