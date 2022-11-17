<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class VehicleLoan extends Model
{
    use HasFactory;

    protected $guarded = [];

    public static function getTemplateFormData()
    {
        return [
            ["name" => "driver_id", "label" => "Nama Driver", "type" => "select", "required" => true, "children" => Drivers::driversSelectOption()],
            ["name" => "vehicle_id", "label" => "Mobil", "type" => "select", "required" => true, "children" => Kendaraan::dataSelectOption()],
            ["name" => "account_id", "label" => "Nama Peminjam", "type" => "select", "required" => true, "children" => Accounts::AccountSelectOption()],
            ["name" => "tanggal", "label" => "Tanggal", "type" => "date", "required" => true],
            ["name" => "waktu", "label" => "Waktu", "type" => "time", "required" => true],
            ["name" => "tujuan", "label" => "Tujuan", "type" => "input", "required" => true],
            ["name" => "keperluan", "label" => "Keperluan", "type" => "textarea", "required" => true],      
        ];
    }

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'account_id');
    }

    public function Drivers()
    {
        return $this->belongsTo(Accounts::class , 'id');
    }

    public function Vehicles()
    {
        return $this->belongsTo(Kendaraan::class , 'vehicle_id');
    }

    public function VehicleLoan()
    {
        return $this->belongsTo(VehicleLoan::class,'id');
    }
}
