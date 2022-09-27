<?php
/**
* Class and Function List:
* Function list:
* - index()
* - getDataInventoriesLoan()
* - (()
* - (()
* - create()
* - store()
* - edit()
* - update()
* Classes list:
* - UsersInventoriesLoanController extends Controller
*/
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
    //
    public function index()
    {
        //
        $data = ['title' => "Data Transaksi BMN", 'date' => date('m/d/Y') ];

        return view('frontend.inventoriesLoan.index', $data);
    }

    public function getDataInventoriesLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = InventoriesLoan::with(['Accounts'])->select("*", DB::raw("DATE_FORMAT(inventoryloan_tgltransaksi, '%d %b %Y') as inventoryloan_tgltransaksi"))->where('account_id', auth()->user()->id)->latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<a href="/pinjam-bmn/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a> ';
                return $actionBtn;
            })->addColumn('inventoryloan_tglpengembalian', function ($data)
            {
                $formatedDate = strtotime($data->inventoryloan_tgltransaksi . ' +' . $data->inventoryloan_duration . ' days');
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

    public function create()
    {
        //
        return view('frontend.inventoriesLoan.create', ['title' => "Detail Transaksi BMN", 'inventories' => Inventories::all() , 'accounts' => Accounts::all()

        // 'inventoriesLoanDetails' => InventoriesLoanDetails::with(['Inventories'])->where('inventoryloan_id',$inventoriesLoan->id)->get()
        ]);

    }

    public function store(Request $request)
    {

        $validatedData = $request->validate(['inventoryloan_status' => 'required|max:255', 'inventoryloan_tgltransaksi' => 'required|max:255', 'inventoryloan_duration' => 'int|required', 'inventoryloan_penanggung_jawab' => 'int|required', 'inventoryloan_tujuan' => 'required|max:255', 'inventory' => 'required', 'inventoryloan_file' => 'file|max:1024','inventoryloan_tglpengembalian' => 'date']);

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
        //
        $date = date("Y-m-d", strtotime($inventoriesLoan->inventoryloan_tgltransaksi));
        $inventoriesLoan->inventoryloan_tgltransaksi = $date;
        return view('frontend.inventoriesLoan.edit', ['title' => "Detail Transaksi BMN", 'inventoriesLoan' => $inventoriesLoan, 'inventories' => Inventories::all() , 'accounts' => Accounts::select('id', 'account_name')->get()

        ]);
    }

    public function update(Request $request, InventoriesLoan $inventoriesLoan)
    {
        //
        $rules = ['inventoryloan_type' => 'required|max:255', 'inventoryloan_penanggung_jawab' => 'required|max:255', 'inventoryloan_tgltransaksi' => 'date|max:1024', 'inventoryloan_duration' => 'int|required', 'inventoryloan_tujuan' => 'required', 'inventoryloan_file' => 'file|max:1024','inventoryloan_tglpengembalian' => 'date'];
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
        //insert data
        InventoriesLoan::where('id', $inventoriesLoan->id)->update($validatedData);

        return redirect('/pinjam-bmn')->with('success', 'Data berhasil diubah');
    }
}

