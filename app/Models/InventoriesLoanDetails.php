<?php
/**
* Class and Function List:
* Function list:
* - InventoriesLoan()
* - Inventories()
* Classes list:
* - InventoriesLoanDetails extends Model
* - )
* - ,
*/
namespace App\Models;

use App\Models\Inventories;
use App\Models\InventoriesLoan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class InventoriesLoanDetails extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $fillable = ['inventory_id', 'inventoryloan_id'];
    public function InventoriesLoan()
    {
        return $this->belongsTo(InventoriesLoan::class,'inventoryloan_id');
    }

    public function Inventories()
    {
        return $this->belongsTo(Inventories::class , 'inventory_id', 'id');
    }
}

