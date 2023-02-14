<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Visitor extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'account_id');
    }

}
