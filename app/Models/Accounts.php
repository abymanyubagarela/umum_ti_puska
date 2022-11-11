<?php
/**
* Class and Function List:
* Function list:
* - getTemplateFormData()
* - InventoriesLoans()
* Classes list:
* - Accounts extends Authenticatable
* - )
*/
namespace App\Models;

use App\Models\InventoriesLoan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Accounts extends Authenticatable
{
    use HasFactory;
    protected $guarded = [];
    private static $templateForm = [
     ["name" => "account_name", "label" => "Nama Akun", "type" => "input", "required" => true],
     ["name" => "account_nip_bpk", "label" => "NIP BPK", "type" => "input", "required" => true],
     ["name" => "account_nip_bkn", "label" => "NIP BKN", "type" => "input", "required" => false],
     ["name" => "account_email", "label" => "Email", "type" => "email", "required" => true],
     ["name" => "account_handphone", "label" => "Nomor handphone", "type" => "input", "required" => false],
     ["name" => "account_unit", "label" => "Unit Kerja", "type" => "select", "required" => false, "children" =>
         [['id' => 'Kepala Perwakilan', 'label' => 'Kepala Perwakilan'], ['id' => 'Subauditorat', 'label' => 'Subauditorat'], ['id' => 'Sekretariat Perwakilan', 'label' => 'Sekretariat Perwakilan'],['id' => 'Subbagian Umum dan Teknologi Informasi', 'label' => 'Subbagian Umum dan Teknologi Informasi'], ['id' => 'Subbagian Humas dan Tata Usaha Kepala Perwakilan', 'label' => 'Subbagian Humas dan Tata Usaha Kepala Perwakilan'], ['id' => 'Subbagian Sumber Daya Manusia', 'label' => 'Subbagian Sumber Daya Manusia'], ['id' => 'Subbagian Keuangan', 'label' => 'Subbagian Keuangan'], ['id' => 'Subbagian Hukum', 'label' => 'Subbagian Hukum']]],
     ["name" => "account_role", "label" => "Role Akun", "type" => "select", "required" => true, "children" =>
         [['id' => 'Super Admin', 'label' => 'Admin'], ['id' => 'Kepala Perwakilan', 'label' => 'Kepala Perwakilan'], ['id' => 'Sekretariat Perwakilan', 'label' => 'Sekretariat Perwakilan'], ['id' => 'Pejabat Struktural', 'label' => 'Pejabat Struktural'], ['id' => 'Petugas BMN', 'label' => 'Petugas BMN'], ['id' => 'Petugas Arsip', 'label' => 'Petugas Arsip'], ['id' => 'Bendahara', 'label' => 'Bendahara'], ['id' => 'Pejabat Pembuat Komitmen I', 'label' => 'Pejabat Pembuat Komitmen I'], ['id' => 'Pejabat Pembuat Komitmen II', 'label' => 'Pejabat Pembuat Komitmen II'], ['id' => 'Pejabat Pembuat Komitmen III', 'label' => 'Pejabat Pembuat Komitmen III'], ['id' => 'Pegawai', 'label' => 'Pegawai']]],
    ];

    public static function getTemplateFormData()
    {
        return collect(self::$templateForm);
    }

    public function InventoriesLoans()
    {
        return $this->hasMany(InventoriesLoan::class,'account_id');
    }
    public function InventoriesLoans2()
    {
        return $this->hasMany(InventoriesLoan::class,'inventoryloan_penanggung_jawab');
    }
    public static function AccountSelectOption()
    {
        return Accounts::all('id','account_nip_bpk','account_name')->toArray();
    }



}

