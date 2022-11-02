<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InventoriesCrash extends Model
{
    use HasFactory;
    
    protected $guarded = [];

    public static function getTemplateFormData()
    {
        return [
            ["name" => "id_barang", "label" => "Nama Barang", "type" => "select", "required" => false, "children" => Inventories::InvetoriesSelectOption()],
            ["name" => "detail_kerusakan", "label" => "Detail Kerusakan", "type" => "textarea", "required" => false],
            ["name" => "id_ruangan", "label" => "Lokasi Ruangan", "type" => "select", "required" => false, "children" => Room::RoomSelectOption()],
            ["name" => "detail_ruangan", "label" => "Detail Ruangan", "type" => "textarea", "required" => false],            
        ];
    }
}
