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

use App\Models\Accounts;
use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpWord\Element\Table;
use App\Exports\ExportInventoriesLoan;
use App\Models\InventoriesLoanDetails;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpWord\TemplateProcessor;
use Yajra\DataTables\Facades\DataTables;
use PhpOffice\PhpWord\SimpleType\TblWidth;
use App\Http\Controllers\Telegram\TelegramBotController;

class InventoriesLoanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = ['title' => "Data Transaksi BMN", 'date' => date('m/d/Y') ];

        return view('backend.inventoriesLoan.index', $data);
    }

    public function getDataInventoriesLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = InventoriesLoan::with(['Accounts'])->select("*", DB::raw("DATE_FORMAT(inventoryloan_tglpeminjaman, '%d %b %Y') as inventoryloan_tglpeminjaman"))->latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<a href="/backend/inventoriesLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a> ';
                return $actionBtn;
            })->addColumn('inventoryloan_esttglpengembalian', function ($data)
            {
                $formatedDate = strtotime($data->inventoryloan_tglpeminjaman . ' +' . $data->inventoryloan_duration . ' days');
                return date('d M Y', $formatedDate);
            })->addColumn('isBast', function ($data)
            {
                $bastLink = '<span class="inline badge bg-danger">Belum ada BAST </span>';
                if($data->inventoryloan_file){
                    $bastLink = '<a class="inline badge bg-success" href="/storage/'.$data->inventoryloan_file.'"target="_blank" download>Download BAST</a>';
                }

                return $bastLink;
            })->rawColumns(['action','isBast'])->make(true);
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('backend.inventoriesLoan.create', ['title' => "Detail Transaksi BMN", 'inventories' => Inventories::where('inventory_isborrowed', 0)->where('inventory_condition','baik') , 'accounts' => Accounts::all()
        ]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreInventoriesLoanRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate(['inventoryloan_status' => 'required|max:255', 'inventoryloan_type' => 'required|max:255', 'inventoryloan_tglpeminjaman' => 'required|max:255', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required|max:255', 'account_id' => 'required|max:255', 'inventoryloan_esttglpengembalian' => 'date','inventoryloan_penanggung_jawab' => 'required|max:255', 'inventory' => 'required'
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

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\InventoriesLoan  $inventoriesLoan
     * @return \Illuminate\Http\Response
     */
    public function show(InventoriesLoan $inventoriesLoan)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\InventoriesLoan  $inventoriesLoan
     * @return \Illuminate\Http\Response
     */
    public function edit(InventoriesLoan $inventoriesLoan)
    {
        //
        $date = date("Y-m-d", strtotime($inventoriesLoan->inventoryloan_tglpeminjaman));
        $inventoriesLoan->inventoryloan_tglpeminjaman = $date;
        return view('backend.inventoriesLoan.edit', ['title' => "Detail Transaksi BMN", 'inventoriesLoan' => $inventoriesLoan, 'inventories' => Inventories::where('inventory_isborrowed', 0)->where('inventory_condition','baik') , 'accounts' => Accounts::all()
        // 'inventoriesLoanDetails' => InventoriesLoanDetails::with(['Inventories'])->where('inventoryloan_id',$inventoriesLoan->id)->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateInventoriesLoanRequest  $request
     * @param  \App\Models\InventoriesLoan  $inventoriesLoan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, InventoriesLoan $inventoriesLoan)
    {
        //
        $rules = ['inventoryloan_status' => 'required|max:255', 'inventoryloan_type' => 'required|max:255', 'account_id' => 'required', 'inventoryloan_penanggung_jawab' => 'required|max:255', 'inventoryloan_tglpeminjaman' => 'date|max:1024', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required','inventoryloan_esttglpengembalian' => 'date', 'inventoryloan_file' => 'file|max:1024'];
        $validatedData = $request->validate($rules);

        if ($request->file('inventoryloan_file'))
        {
            if ($request->oldBAST)
            {
                Storage::delete($request->oldBAST);
            }
            $validatedData['inventoryloan_file'] = $request->file('inventoryloan_file')->store('bast-files');
            Log::channel('pinjamBMN')->info(auth()->user()->account_name.' Mengupload BAST di inventoryloan ID = '. $inventoriesLoan->id);
        }
        $validatedData['inventoryloan_updatedby'] = auth()->user()->id;
        //insert data
        InventoriesLoan::where('id', $inventoriesLoan->id)->update($validatedData);
        if($validatedData['inventoryloan_status'] == "Sudah diproses"){
             Log::channel('pinjamBMN')->info(auth()->user()->account_name.'Melakukan Update Data : '.json_encode($validatedData));
        }
        return redirect('/backend/inventoriesLoan')->with('success', 'Data berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\InventoriesLoan  $inventoriesLoan
     * @return \Illuminate\Http\Response
     */
    public function destroy(InventoriesLoan $inventoriesLoan)
    {
        //
        if ($inventoriesLoan->inventoryloan_file)
        {
            Storage::delete($inventoriesLoan->inventoryloan_file);
        }
        InventoriesLoan::destroy($inventoriesLoan->id);

    }

    public function generateBAST(InventoriesLoan $inventoriesLoan)
    {
        $templateProcessor = new TemplateProcessor(public_path().'/template/templateBASTPeminjamanFix.docx');
        $kasubag = Accounts::select('account_name','account_nip_bkn')->where('account_role', 'Pejabat Struktural')->where('account_unit','Subbagian Umum dan Teknologi Informasi')->get();
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


        $templateProcessor->setValue('noBAST', ' ');
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
        $kasubag = Accounts::select('account_name','account_nip_bkn')->where('account_role', 'Pejabat Struktural')->where('account_unit','Subbagian Umum dan Teknologi Informasi')->get();
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

        $templateProcessor->setValue('noBAST', ' ');
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

    public function exportInventoriesLoan(Request $request)
    {
        return Excel::download(new ExportInventoriesLoan($request) , 'Data Peminjaman BMN.xlsx');
    }
}

