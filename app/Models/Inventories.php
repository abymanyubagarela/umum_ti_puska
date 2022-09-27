<?php
/**
* Class and Function List:
* Function list:
* - getTemplateFormData()
* - InvetoriesLoanDetails()
* Classes list:
* - Inventories extends Model
* - ,
*/
namespace App\Models;

use App\Models\InventoriesLoanDetails;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Inventories extends Model
{
    use HasFactory;
    protected $guarded = [];
    private static $templateForm = [["name" => "inventory_name", "label" => "Nama Barang", "type" => "input", "required" => false], ["name" => "inventory_nup", "label" => "NUP", "type" => "input", "required" => false], ["name" => "inventory_brand", "label" => "Merek / Tipe", "type" => "input", "required" => false], ["name" => "inventory_description", "label" => "Deskripsi", "type" => "textarea", "required" => false], ["name" => "inventory_condition", "label" => "Kondisi Barang", "type" => "select", "required" => false, "children" => [['id' => 'Baik', 'label' => 'Baik'], ['id' => 'Rusak', 'label' => 'Rusak']]], ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public function InvetoriesLoanDetails()
    {
        return $this->hasMany(InventoriesLoanDetails::class , 'id', 'inventory_id');
    }

}

