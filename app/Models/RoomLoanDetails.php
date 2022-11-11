<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomLoanDetails extends Model
{
    use HasFactory;

    protected $fillable = ['equipment_id', 'jumlah', 'roomloan_id'];

    public function Equipments()
    {
        return $this->belongsTo(Equipment::class , 'equipment_id');
    }
}
