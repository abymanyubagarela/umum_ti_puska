<?php
namespace App\Http\Controllers\Users;

use App\Models\Accounts;
use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoan;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\InventoriesLoanDetails;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Controllers\Telegram\TelegramBotController;

class UsersInventoriesLoanController extends Controller
{
    public function index()
    {
        $data = ['title' => "Data Transaksi BMN", 'date' => date('m/d/Y') ];
        return view('frontend.inventoriesLoan.index', $data);
    }


    public function create()
    {
        return view('frontend.inventoriesLoan.create', [
            'title' => "Detail Transaksi BMN",
            'inventories' => Inventories::all() ,
            'accounts' => Accounts::all()
        ]);

    }

    public function store(Request $request)
    {
        $validatedData = $request->validate(['inventoryloan_status' => 'required|max:255', 'inventoryloan_tglpeminjaman' => 'required|max:255', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required|max:255', 'inventoryloan_esttglpengembalian' => 'date','inventoryloan_penanggung_jawab' => 'required|max:255', 'inventory' => 'required','inventoryloan_tglpengembalian' => ''
    ]);
        if ($request->file('inventoryloan_file'))
        {
            $validatedData['inventoryloan_file'] = $request->file('inventoryloan_file')->store('bast-files');
        }

        $inventoryIds = $validatedData['inventory'];
        $validatedData['inventoryloan_status'] = "Belum diproses";
        $validatedData['inventoryloan_type'] = "Peminjaman";
        $validatedData['account_id'] = auth()->user()->id;

        unset($validatedData['inventory']);

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
        TelegramBotController::messages(auth()->user()->account_name.' Telah Membuat Form Peminjaman Barang');

        return redirect('pinjam-bmn/')->with('success', 'Data berhasil di tambahkan');
    }

    public function edit(InventoriesLoan $inventoriesLoan)
    {
        $date = date("Y-m-d", strtotime($inventoriesLoan->inventoryloan_tglpeminjaman));
        $inventoriesLoan->inventoryloan_tglpeminjaman = $date;
        $adminAlreadyUpload = InventoriesLoan::select('inventoryloan_updatedby')->where('id', $inventoriesLoan->id)->get();
        return view('frontend.inventoriesLoan.edit',
        [
            'title' => "Detail Transaksi BMN",
            'inventoriesLoan' => $inventoriesLoan,
            'inventories' => Inventories::all() ,
            'accounts' => Accounts::select('id', 'account_name')->get(),
            'adminAlreadyUpload' => $adminAlreadyUpload[0]->inventoryloan_updatedby
        ]);
    }

    public function update(Request $request, InventoriesLoan $inventoriesLoan)
    {
        // dd($request);
        $rules = ['inventoryloan_status' => 'required|max:255','inventoryloan_penanggung_jawab' => 'required|max:255', 'inventoryloan_tglpeminjaman' => 'date|max:1024', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required','inventoryloan_esttglpengembalian' => 'date', 'inventoryloan_file' => 'file|max:1024|mimes:pdf', 'inventoryloan_filepengembalian' => 'file|max:1024|mimes:pdf','inventoryloan_nomorBAST' => '','inventoryloan_nomorBAP' => '','inventoryloan_tglpengembalian' => ''];
        $validatedData = $request->validate($rules);
        $validatedData['account_id'] = auth()->user()->id;
        if ($request->file('inventoryloan_file'))
        {
            if ($request->oldBAST)
            {
                Storage::delete($request->oldBAST);
            }
            $validatedData['inventoryloan_file'] = $request->file('inventoryloan_file')->store('bast-files');
            TelegramBotController::messages(auth()->user()->account_name.' Telah Mengupload BAST');
        }
        if ($request->file('inventoryloan_filepengembalian'))
        {
            if ($request->oldBAP)
            {
                Storage::delete($request->oldBAP);
            }
            $validatedData['inventoryloan_filepengembalian'] = $request->file('inventoryloan_filepengembalian')->store('bap-files');
            TelegramBotController::messages(auth()->user()->account_name.' Telah Mengupload BAP');


        }
        //insert data
        InventoriesLoan::where('id', $inventoriesLoan->id)->update($validatedData);
        return redirect('/pinjam-bmn')->with('success', 'Data berhasil diubah');
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
        InventoriesLoanDetails::where('inventoryloan_id', '=', $inventoryloan_id)->delete();
        $inventory = InventoriesLoan::destroy($inventoryloan_id);
        return response()->json($inventory);
    }

    public function getDataInventoriesLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = InventoriesLoan::with(['Accounts'])->select("*", DB::raw("DATE_FORMAT(inventoryloan_tglpeminjaman, '%d %b %Y') as inventoryloan_tglpeminjaman"))->where('account_id', auth()->user()->id)->latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                if($row->inventoryloan_status == "Belum diproses"){
                $actionBtn = '<a href="/pinjam-bmn/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a> <button value="' . $row->id . '"  name="' . $row->account_name . '"class="delete delete-product badge bg-danger btn-sm">Delete</button>';
                } else{
                $actionBtn = '<a href="/pinjam-bmn/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a>';
                }
                return $actionBtn;
            })->addColumn('inventoryloan_esttglpengembalian', function ($data)
            {
                $formatedDate = strtotime($data->inventoryloan_tglpeminjaman . ' +' . $data->inventoryloan_duration . ' days');
                return date('d M Y', $formatedDate);
            })->addColumn('isBast', function ($data)
            {
                $bastLink = '<span class="inline badge w-100 bg-danger">Belum ada BAST </span>';
                if($data->inventoryloan_file){
                    $bastLink = '<a class="inline badge  w-100 bg-success" href="/storage/'.$data->inventoryloan_file.'"target="_blank" download>Download BAST</a>';
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
}

