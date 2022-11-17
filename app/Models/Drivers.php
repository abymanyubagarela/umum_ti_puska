<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use SebastianBergmann\CodeCoverage\Driver\Driver;

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
        return Drivers::where('slug', $slug)->first($column);
    }

    public static function driversSelectOption()
    {
        return Drivers::select('drivers.id', 'accounts.account_name as name')
        ->join('accounts', 'accounts.id', '=', 'drivers.id')
        ->get();
    }

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'account_id');
    }
}
