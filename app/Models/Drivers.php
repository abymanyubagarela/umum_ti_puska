<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Drivers extends Model
{
    use HasFactory;

    protected $guarded = [];
    
    public static function getTemplateFormData()
    {
        return [
            ["name" => "account_id", "label" => "Nama Driver", "type" => "select", "required" => true, "children" => Accounts::NonDriverAccountSelectOption()],           
        ];
    }

    public static function findBySlug($slug, $column)
    {
        return Room::where('slug', $slug)->first($column);
    }

    public static function driversSelectOption()
    {
        return Room::all('id','name')->toArray();
    }

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'account_id');
    }
}
