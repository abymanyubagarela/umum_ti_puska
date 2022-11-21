<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    use HasFactory;

    protected $guarded = [];

    private static $templateForm = [
        ["name" => "name", "label" => "Merk Kendaraan", "type" => "input", "required" => true],
        ["name" => "nomor", "label" => "Plat Kendaraan", "type" => "input", "required" => true],
        ["name" => "kapasitas", "label" => "Kapasitas", "type" => "number", "required" => true],
    ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public static function findBySlug($slug, $column)
    {
        return Kendaraan::where('slug', $slug)->first($column);
    }

    public static function dataSelectOption()
    {
        return Kendaraan::all('id','name')->toArray();
    }
}
