<?php
/**
* Class and Function List:
* Function list:
* - Accounts()
* - inventoryloanPenanggungJawab()
* - invetoriesLoanDetails()
* Classes list:
* - InventoriesLoan extends Model
* - ,
* - ,
* - )
*/
namespace App\Models;

use App\Models\Accounts;
use App\Models\InventoriesLoanDetails;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class InventoriesLoan extends Model
{
    use HasFactory;
    protected $guarded = [];

    //relasi ke akun
    public function Accounts()
    {
        return $this->belongsTo(Accounts::class , 'account_id');
    }
    public function inventoryloan_penanggung_jawabs()
    {
        return $this->belongsTo(Accounts::class , 'inventoryloan_penanggung_jawab');
    }

    public function invetoriesLoanDetails()
    {
        return $this->hasMany(InventoriesLoanDetails::class);
    }

}

