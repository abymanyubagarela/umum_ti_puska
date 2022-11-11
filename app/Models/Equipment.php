<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Equipment extends Model
{
    use HasFactory;

    protected $guarded = [];
    
    private static $templateForm = [
        ["name" => "name", "label" => "Nama Peralatan", "type" => "input", "required" => true], 
        ["name" => "keterangan", "label" => "Keterangan", "type" => "textarea", "required" => false],
    ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public static function findBySlug($slug, $column)
    {
        return Room::where('slug', $slug)->first($column);
    }

    public static function EquipmentSelectOption()
    {
        return Room::all('id','name')->toArray();
    }
}
