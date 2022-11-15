<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    
    protected $guarded = [];
    
    private static $templateForm = [
        ["name" => "name", "label" => "Nama Ruangan", "type" => "input", "required" => true], 
        ["name" => "detail_ruangan", "label" => "Keterangan", "type" => "textarea", "required" => false],
    ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public static function findBySlug($slug, $column)
    {
        return Room::where('slug', $slug)->first($column);
    }

    public static function RoomSelectOption()
    {
        return Room::all('id','name')->toArray();
    }
}
