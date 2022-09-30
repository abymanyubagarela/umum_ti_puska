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
     ["name" => "account_tmt", "label" => "Tanggal Masuk Perwakilan", "type" => "date", "required" => false],
     ["name" => "account_status", "label" => "Status", "type" => "select", "required" => false, "children" => [['id' => 'Honor', 'label' => 'Honor'], ['id' => 'PNS', 'label' => 'PNS'], ['id' => 'CPNS', 'label' => 'CPNS']]],
     ["name" => "account_golongan", "label" => "Golongan", "type" => "select", "required" => true, "children" =>
        [['id' => 'II A', 'label' => 'II A'], ['id' => 'II B', 'label' => 'II B'], ['id' => 'II C', 'label' => 'II D'], ['id' => 'III A', 'label' => 'III A'], ['id' => 'III B', 'label' => 'III B'], ['id' => 'III C', 'label' => 'III C'], ['id' => 'III D', 'label' => 'III D'], ['id' => 'IV A', 'label' => 'IV A'], ['id' => 'IV B', 'label' => 'IV B'], ['id' => 'IV C', 'label' => 'IV C'], ['id' => 'IV D', 'label' => 'IV D'], ['id' => 'IV E', 'label' => 'IV E']]],
     ["name" => "account_jabatan", "label" => "Jabatan", "type" => "input", "required" => false],
     ["name" => "account_pendidikan", "label" => "Pendidikan Terkahir", "type" => "select", "required" => false, "children" =>
         [['id' => 'SMP', 'label' => 'SMP'], ['id' => 'SMA', 'label' => 'SMA'], ['id' => 'D3', 'label' => 'D3'], ['id' => 'S1', 'label' => 'S1'], ['id' => 'S2', 'label' => 'S2'], ['id' => 'S3', 'label' => 'S3']]],
     ["name" => "account_agama", "label" => "Agama", "type" => "select", "required" => false, "children" =>
        [['id' => 'Islam', 'label' => 'Islam'], ['id' => 'Protestan', 'label' => 'Protestan'], ['id' => 'Katholik', 'label' => 'Katholik'], ['id' => 'Hindu', 'label' => 'Hindu'], ['id' => 'Budha', 'label' => 'Budha'], ['id' => 'Konghucu', 'label' => 'Konghucu'], ['id' => 'Lainnya', 'label' => 'Lainnya'], ]],
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




}

