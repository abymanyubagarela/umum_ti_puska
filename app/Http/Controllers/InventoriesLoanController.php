<?php
/**
* Class and Function List:
* Function list:
* - index()
* - getDataInventoriesLoan()
* - create()
* - store()
* - show()
* - edit()
* - update()
* - destroy()
* - generateBAST()
* Classes list:
* - InventoriesLoanController extends Controller
*/
namespace App\Http\Controllers;

use ZipArchive;
use App\Models\Accounts;
use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpWord\Element\Table;
use App\Exports\ExportInventoriesLoan;
use App\Models\InventoriesLoanDetails;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpWord\TemplateProcessor;
use Yajra\DataTables\Facades\DataTables;
use PhpOffice\PhpWord\SimpleType\TblWidth;
use App\Exports\ExportInventoriesLoanCollection;
use App\Http\Controllers\Telegram\TelegramBotController;

class InventoriesLoanController extends Controller
{
    public function index()
    {
        $data = ['title' => "Data Transaksi BMN", 'date' => date('m/d/Y') ];
        return view('backend.inventoriesLoan.index', $data);
    }

    public function create()
    {
        return view('backend.inventoriesLoan.create', ['title' => "Detail Transaksi BMN",
        'inventories' => Inventories::where('inventory_isborrowed', 0)->where('inventory_condition','baik') , 'accounts' => Accounts::all(),
        'inventoriesLoan' => InventoriesLoan::all()
        ]);

    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'inventoryloan_status' => 'required|max:48',
             'inventoryloan_type' => 'required|max:48',
             'inventoryloan_tglpeminjaman' => 'required|date',
             'inventoryloan_duration' => 'int|required',
             'inventoryloan_tujuan' => 'required',
             'account_id' => 'required|max:48',
             'inventoryloan_esttglpengembalian' => 'nullable|date',
             'inventoryloan_penanggung_jawab' => 'required|max:48',
             'inventory' => 'required',
             'inventoryloan_tglpengembalian' => 'nullable|date'
        ]);

        $inventoryIds = $validatedData['inventory'];
        unset($validatedData['inventory']);
        $validatedData['inventoryloan_createdby'] = auth()->user()->id;
        $id = InventoriesLoan::create($validatedData)->id;
        $datas = [];
        $inventories = [];
        $isBorrowed = $validatedData['inventoryloan_type'] = "Peminjaman" ? 1 : 0;

        foreach ($inventoryIds as $inventory_id => $value)
        {
            array_push($datas, ['inventory_id' => $value, 'inventoryloan_id' => $id]);
            array_push($inventories, ['inventory_id' => $value]);
        }
        InventoriesLoanDetails::insert($datas);
        Inventories::whereIn('id', $inventories)->update(['inventory_isborrowed' => $isBorrowed]);

        return redirect('/backend/inventoriesLoan/')->with('success', 'Data berhasil di tambahkan');

    }

    public function show(InventoriesLoan $inventoriesLoan)
    {
    }

    public function edit(InventoriesLoan $inventoriesLoan)
    {
        $date = date("Y-m-d", strtotime($inventoriesLoan->inventoryloan_tglpeminjaman));
        $inventoriesLoan->inventoryloan_tglpeminjaman = $date;
        return view('backend.inventoriesLoan.edit', ['title' => "Detail Transaksi BMN", 'inventoriesLoan' => $inventoriesLoan, 'inventories' => Inventories::where('inventory_isborrowed', 0)->where('inventory_condition','baik') , 'accounts' => Accounts::all()
        ]);
    }

    public function update(Request $request, InventoriesLoan $inventoriesLoan)
    {
        $rules = ['inventoryloan_status' => 'required|max:255', 'inventoryloan_type' => 'required|max:255', 'account_id' => 'required', 'inventoryloan_penanggung_jawab' => 'required|max:255', 'inventoryloan_tglpeminjaman' => 'date|max:1024', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required','inventoryloan_esttglpengembalian' => 'date', 
        'inventoryloan_file' => 'file|max:1024|mimes:pdf', 
        'inventoryloan_filepengembalian' => 'file|max:1024|mimes:pdf','inventoryloan_nomorBAST' => '','inventoryloan_nomorBAP' => '','inventoryloan_tglpengembalian' => ''];
        $validatedData = $request->validate($rules);
        $symbol= [".","/"];
        if ($request->file('inventoryloan_file'))
        {
            if ($request->oldBAST)
            {
                Storage::delete($request->oldBAST);
            }
            $bastName= str_replace($symbol,'-',$request->inventoryloan_nomorBAST);

            $validatedData['inventoryloan_file'] = Storage::putFileAs('bast-files', $request->file('inventoryloan_file'), $bastName.'.pdf');
            Log::channel('pinjamBMN')->info(auth()->user()->account_name.' Mengupload BAST di inventoryloan ID = '. $inventoriesLoan->id);
            TelegramBotController::messages(auth()->user()->account_name.' Telah Mengupload BAST');

            $validatedData['inventoryloan_updatedby'] = auth()->user()->account_role;
        }
        if ($request->file('inventoryloan_filepengembalian'))
        {
            if ($request->oldBAP)
            {
                dd('if');
                Storage::delete($request->oldBAP);
            } else {
                dd('else');
                $inventoryDetails = InventoriesLoanDetails::where('inventoryloan_id', '=',$inventoriesLoan->id)->get();
                foreach($inventoryDetails as $inventoryDetail){
                    $inventory_id = $inventoryDetail->inventory_id;
                    Inventories::where('id', $inventory_id)->update(array(
                        'inventory_isborrowed' => 0
                    ));
                }
            }
            $bapName= str_replace($symbol,'-',$request->inventoryloan_nomorBAP);
            $validatedData['inventoryloan_tglpengembalian'] = date('Y-m-d');
            $validatedData['inventoryloan_filepengembalian'] = Storage::putFileAs('bap-files', $request->file('inventoryloan_filepengembalian'), $bapName.'.pdf'
            );
            TelegramBotController::messages(auth()->user()->account_name.' Telah Mengupload BAP');
            $validatedData['inventoryloan_updatedby'] = auth()->user()->account_role;
        }

        //insert data
        InventoriesLoan::where('id', $inventoriesLoan->id)->update($validatedData);
        if($validatedData['inventoryloan_status'] == "Sudah diproses"){
             Log::channel('pinjamBMN')->info(auth()->user()->account_name.'Melakukan Update Data : '.json_encode($validatedData));
        }

        return redirect('/backend/inventoriesLoan')->with('success', 'Data berhasil diubah');
    }

    public function destroy($inventoryloan_id)
    {
        $inventories_file = InventoriesLoan::find($inventoryloan_id);
        $inventories_fileBAST = $inventories_file->inventoryloan_file;
        $inventories_fileBAP = $inventories_file->inventoryloan_filepengembalian;
        if ($inventories_fileBAST)
        {
            Storage::delete($inventories_fileBAST);
        }
        if ($inventories_fileBAP)
        {
            Storage::delete($inventories_fileBAP);
        }

        $inventoryDetails = InventoriesLoanDetails::where('inventoryloan_id', '=', $inventoryloan_id)->get();
        foreach($inventoryDetails as $inventoryDetail){
            $inventory_id = $inventoryDetail->inventory_id;
            Inventories::where('id', $inventory_id)->update(array(
                'inventory_isborrowed' => 0
            ));
        }

        InventoriesLoanDetails::where('inventoryloan_id', '=', $inventoryloan_id)->delete();
        $inventory = InventoriesLoan::destroy($inventoryloan_id);
        return response()->json($inventory);
    }
    // FOR EXPORT DATA
    public function generateBAST(InventoriesLoan $inventoriesLoan)
    {
        $templateProcessor = new TemplateProcessor(public_path().'/template/templateBASTPeminjamanFix.docx');
        $kasubag = Accounts::select('account_name','account_nip_bkn')->where('account_jabatan', 'Kepala Subbagian')->where('account_unit','Subbagian Umum dan Teknologi Informasi')->get();
        $petugasBMN = Accounts::select('account_name','account_nip_bkn')->where('account_role', 'Petugas BMN')->get();
        $table = new Table(['borderSize' => 12, 'borderColor' => 'black', 'width' => 5000, 'unit' => TblWidth::PERCENT]);
        $inventories = InventoriesLoanDetails::with('Inventories')->where('inventoryloan_id', $inventoriesLoan->id)->get();
        $date = $inventoriesLoan->inventoryloan_tglpeminjaman;

        if($inventoriesLoan->inventoryloan_tujuan == "Pemeriksaan"){
        $deskripsi = "Berita Acara Serah Terima ini dibuat asli dan ditandatangani oleh Pihak Pertama dan Pihak Kedua, serta berlaku selama ". $inventoriesLoan->inventoryloan_duration." hari sejak BAST ini dibuat sehingga Pihak Kedua berkewajiban untuk mengembalikan BMN tersebut sebelum tanggal ". $inventoriesLoan->inventoryloan_esttglpengembalian. "Selama Selama waktu penyerahan Pihak Kedua bertanggungjawab penuh atas BMN tersebut dan diketahui oleh Kepala Subbagian Umum dan TI, dan mempunyai kekuatan hukum yang sama pada kedua belah pihak." ;}
        else if ($inventoriesLoan->inventoryloan_tujuan == "Keperluan Kerja"){
        $deskripsi = "Berita Acara Serah Terima ini dibuat asli dan ditandatangani oleh Pihak Pertama dan Pihak Kedua, serta berlaku selama Pihak Kedua masih menggunakan barang di atas." ;
        } else {
            $deskripsi ="Berita Acara Serah Terima ini dibuat asli dan ditandatangani oleh Pihak Pertama dan Pihak Kedua, serta berlaku sampai ".$inventoriesLoan->inventoryloan_tujuan." telah selesai dilaksanakan." ;
        }

        $a = 0;
        $table->addRow();
        $table->addCell(150)->addText('No');
        $table->addCell(150)->addText('Nama BMN');
        $table->addCell(150)->addText('Merek/Tipe');
        $table->addCell(150)->addText('NUP');
        $table->addCell(150)->addText('Kelengkapan');
        foreach ($inventories as $inventory)
        {
            $a++;
            $table->addRow();
            $table->addCell(150)->addText($a);
            $table->addCell(150)->addText($inventory->inventories->inventory_name);
            $table->addCell(150)->addText($inventory->inventories->inventory_brand);
            $table->addCell(150)->addText($inventory->inventories->inventory_nup);
            $table->addCell(150)->addText($inventory->inventories->inventory_description);
        }
        $templateProcessor->setComplexBlock('table', $table);

        $templateProcessor->setValue('noBAST',$inventoriesLoan->inventoryloan_nomorBAST);
        $templateProcessor->setValue('days', hari($date));
        $templateProcessor->setValue('tanggal', terbilang(tanggal($date,'tanggal')));
        $templateProcessor->setValue('bulanAngka',tanggal($date,'bulan'));
        $templateProcessor->setValue('tahunAngka', tanggal($date,'tahun'));
        $templateProcessor->setValue('bulan', bulan($date));
        $templateProcessor->setValue('tahun',  terbilang(tanggal($date,'tahun')));
        $templateProcessor->setValue('dateFull', $date);
        $templateProcessor->setValue('petugasBmn', $petugasBMN[0]->account_name);
        $templateProcessor->setValue('petugasBmnNIP', $petugasBMN[0]->account_nip_bkn);
        $templateProcessor->setValue('penanggungJawab',  $inventoriesLoan->inventoryloan_penanggung_jawabs->account_name);
        $templateProcessor->setValue('penanggungJawabNIP', $inventoriesLoan->inventoryloan_penanggung_jawabs->account_nip_bkn);
        $templateProcessor->setValue('penanggungJawabJabatan', $inventoriesLoan->inventoryloan_penanggung_jawabs->account_jabatan);
        $templateProcessor->setValue('duration', $inventoriesLoan->inventoryloan_duration);
        $templateProcessor->setValue('tanggalKembali', $inventoriesLoan->inventoryloan_esttglpengembalian);
        $templateProcessor->setValue('kasubbagUmum', $kasubag[0]->account_name);
        $templateProcessor->setValue('kasubbagUmNIP', $kasubag[0]->account_nip_bkn);
        $templateProcessor->setValue('peminjam',$inventoriesLoan->accounts->account_name );
        $templateProcessor->setValue('peminjamNIP', $inventoriesLoan->accounts->account_nip_bkn);
        $templateProcessor->setValue('deskripsi', $deskripsi);

        if (Storage::exists('bast-template/' . $inventoriesLoan->id . '.docx'))
        {
            Storage::delete('bast-template/' . $inventoriesLoan->id . '.docx');
        }
        $templateProcessor->saveAs('storage/bast-template/' . $inventoriesLoan->id . '.docx');
        return response()->download('storage/bast-template/' . $inventoriesLoan->id . '.docx');
    }

    public function generateBAP(InventoriesLoan $inventoriesLoan)
    {
        $templateProcessor = new TemplateProcessor(public_path().'/template/templateBAPPeminjamanFix.docx');
        $kasubag = Accounts::select('account_name','account_nip_bkn')->where('account_jabatan', 'Kepala Subbagian')->where('account_unit','Subbagian Umum dan Teknologi Informasi')->get();
        $petugasBMN = Accounts::select('account_name','account_nip_bkn')->where('account_role', 'Petugas BMN')->get();
        $table = new Table(['borderSize' => 12, 'borderColor' => 'black', 'width' => 5000, 'unit' => TblWidth::PERCENT]);
        $inventories = InventoriesLoanDetails::with('Inventories')->where('inventoryloan_id', $inventoriesLoan->id)->get();
        $date = $inventoriesLoan->inventoryloan_esttglpengembalian;
        $a = 0;
        $table->addRow();
        $table->addCell(150)->addText('No');
        $table->addCell(150)->addText('Nama BMN');
        $table->addCell(150)->addText('Merek/Tipe');
        $table->addCell(150)->addText('NUP');
        $table->addCell(150)->addText('Kelengkapan');
        foreach ($inventories as $inventory)
        {
            $a++;
            $table->addRow();
            $table->addCell(150)->addText($a);
            $table->addCell(150)->addText($inventory->inventories->inventory_name);
            $table->addCell(150)->addText($inventory->inventories->inventory_brand);
            $table->addCell(150)->addText($inventory->inventories->inventory_nup);
            $table->addCell(150)->addText($inventory->inventories->inventory_description);
        }
        $templateProcessor->setComplexBlock('table', $table);

        $templateProcessor->setValue('noBAST', $inventoriesLoan->inventoryloan_nomorBAP);
        $templateProcessor->setValue('days', hari($date));
        $templateProcessor->setValue('tanggal', terbilang(tanggal($date,'tanggal')));
        $templateProcessor->setValue('bulanAngka',tanggal($date,'bulan'));
        $templateProcessor->setValue('tahunAngka', tanggal($date,'tahun'));
        $templateProcessor->setValue('bulan', bulan($date));
        $templateProcessor->setValue('tahun',  terbilang(tanggal($date,'tahun')));
        $templateProcessor->setValue('dateFull', $date);
        $templateProcessor->setValue('petugasBmn', $petugasBMN[0]->account_name);
        $templateProcessor->setValue('petugasBmnNIP', $petugasBMN[0]->account_nip_bkn);
        $templateProcessor->setValue('penanggungJawab',  $inventoriesLoan->inventoryloan_penanggung_jawabs->account_name);
        $templateProcessor->setValue('penanggungJawabNIP', $inventoriesLoan->inventoryloan_penanggung_jawabs->account_nip_bkn);
        $templateProcessor->setValue('penanggungJawabJabatan', $inventoriesLoan->inventoryloan_penanggung_jawabs->account_jabatan);
        $templateProcessor->setValue('duration', $inventoriesLoan->inventoryloan_duration);
        $templateProcessor->setValue('tanggalKembali', $inventoriesLoan->inventoryloan_esttglpengembalian);
        $templateProcessor->setValue('kasubbagUmum', $kasubag[0]->account_name);
        $templateProcessor->setValue('kasubbagUmNIP', $kasubag[0]->account_nip_bkn);
        $templateProcessor->setValue('peminjam',$inventoriesLoan->accounts->account_name );
        $templateProcessor->setValue('peminjamNIP', $inventoriesLoan->accounts->account_nip_bkn);

        if (Storage::exists('bap-template/' . $inventoriesLoan->id . '.docx'))
        {
            Storage::delete('bap-template/' . $inventoriesLoan->id . '.docx');
        }
        $templateProcessor->saveAs('storage/bap-template/' . $inventoriesLoan->id . '.docx');
        return response()->download('storage/bap-template/' . $inventoriesLoan->id . '.docx');
    }

    public function reportBMNIndex()
    {
        return view('backend.inventoriesLoan.exportIndex');
    }

    public function exportInventoriesLoan(Request $request)
    {
        return Excel::download(new ExportInventoriesLoan($request) , 'Data Peminjaman BMN.xlsx');
    }

    ///FOR DASHBOARD
    public function getDataInventoryLoanDashboard(){
        $data = InventoriesLoan::select('id', 'inventoryloan_status','inventoryloan_esttglpengembalian')->where('account_id', auth()->user()->id)->get();
        return response()->json($data);
    }

    public function getDataInventoriesLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = InventoriesLoan::with(['Accounts'])->select("*", DB::raw("DATE_FORMAT(inventoryloan_tglpeminjaman, '%d %b %Y') as inventoryloan_tglpeminjaman"))->latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                if($row->inventoryloan_status == "Belum diproses"){
                    $actionBtn = '<a href="/backend/inventoriesLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a> <button value="' . $row->id . '"  name="' . $row->account_name . '"class="delete delete-product badge bg-danger btn-sm">Delete</button>';
                    } else{
                    $actionBtn = '<a href="/backend/inventoriesLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a>';
                    }
                return $actionBtn;
            })->addColumn('inventoryloan_esttglpengembalian', function ($data)
            {
                $formatedDate = strtotime($data->inventoryloan_tglpeminjaman . ' +' . $data->inventoryloan_duration . ' days');
                return date('d M Y', $formatedDate);
            })->addColumn('isBast', function ($data)
            {
                $bastLink = '<span class="inline badge w-100  bg-danger">Belum ada BAST </span>';
                if($data->inventoryloan_file){
                    $bastLink = '<a class="inline badge w-100 bg-success" href="/storage/'.$data->inventoryloan_file.'"target="_blank" download>Download BAST</a>';
                }
                if(!$data->inventoryloan_filepengembalian){
                    $bastLink = $bastLink . '<br><span class="inline w-100 badge bg-danger">Belum ada BAP </span>';
                }else if($data->inventoryloan_filepengembalian){
                    $bastLink =  $bastLink .'<br><a class="inline w-100 badge bg-success" href="/storage/'.$data->inventoryloan_filepengembalian.'"target="_blank" download>Download BAP</a>';
                }

                return $bastLink;
            })->rawColumns(['action','isBast'])->make(true);
        }

    }

    public function ZipArchiveInventoriesLoan(Request $request)
    {
        $zip = new ZipArchive;
        $fileName = date('Y-m-d').'.zip';
        $datas =InventoriesLoan::where('inventories_loans.inventoryloan_tglpeminjaman', '>=', $request['dateFrom'])->where('inventories_loans.inventoryloan_tglpeminjaman', '<=', $request['dateNext'])->get();
        if ($zip->open(public_path($fileName), ZipArchive::CREATE | ZipArchive::OVERWRITE) === TRUE)
        {
            foreach ($datas as $data) {
                if($data->inventoryloan_file){
                    $zip->addFile('storage/'.$data->inventoryloan_file);
                }
                if($data->inventoryloan_filepengembalian){
                $zip->addFile('storage/'.$data->inventoryloan_filepengembalian);
                }
            }
            $zip->close();
        }
        if(!file_exists(public_path($fileName))){
            return back()->withErrors(['error' => 'Tidak ada file di tanggal tersebut']);
        };
        return response()->download(public_path($fileName));
    }
}

