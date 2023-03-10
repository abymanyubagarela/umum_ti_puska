<?php

namespace App\Http\Controllers;

use App\Models\InventoriesCrash;
use App\Models\Accounts;
use App\Models\Inventories;
use App\Models\Room;
use App\Http\Requests\StoreInventoriesCrashRequest;
use App\Http\Requests\UpdateInventoriesCrashRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\DataTables;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpWord\Element\Table;
use App\Exports\ExportInventoriesCrash;

class InventoriesCrashController extends Controller
{
    public function index()
    {
        $data = [
            'title' => "Data Kerusakan BMN", 
            'date' => date('m/d/Y') , 
            'dataCreate' => InventoriesCrash::getTemplateFormData(),
        ];

        return view('backend.inventoriesCrash.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'title' => "Data Kerusakan BMN", 
            'date' => date('m/d/Y'), 
            'dataCreate' => InventoriesCrash::getTemplateFormData()
        ];  

        return view('backend.inventoriesCrash.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreInventoriesCrashRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreInventoriesCrashRequest $request)
    {
        
        $validatedData = $request->validate([
            'id_pegawai' => 'required',
            'id_barang' => 'required',
            'id_ruangan' => 'required',
            'detail_ruangan' => 'required',
            'detail_kerusakan' => 'required',
            'detail_foto' => 'file|max:1024|image', 
        ]);

        if ($request->file('detail_foto'))
        {
            $validatedData['detail_foto']  = Storage::putFile('kerusakan-files', $request->file('detail_foto'));
        }
        
        InventoriesCrash::create($validatedData);

        return redirect('/backend/inventoriesCrash')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\InventoriesCrash  $InventoriesCrash
     * @return \Illuminate\Http\Response
     */
    public function show(InventoriesCrash $InventoriesCrash)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\InventoriesCrash  $InventoriesCrash
     * @return \Illuminate\Http\Response
     */
    public function edit(InventoriesCrash $inventoriesCrash)
    {
        
        $data = [
            'title' => "Data Kerusakan BMN", 
            'date' => date('m/d/Y'), 
            'dataCreate' => InventoriesCrash::getTemplateFormData(),
            'inventoriesCrash' => $inventoriesCrash,
            'accounts' => Accounts::all(),
            'inventories' => Inventories::all(),
            'rooms' => Room::all(),
        ];  

        return view('backend.inventoriesCrash.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateInventoriesCrashRequest  $request
     * @param  \App\Models\InventoriesCrash  $InventoriesCrash
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateInventoriesCrashRequest $request, $id)
    {
        $validatedData = $request->validate([
            'id_pegawai' => 'required',
            'id_barang' => 'required',
            'id_ruangan' => 'required',
            'detail_ruangan' => 'required',
            'detail_kerusakan' => 'required',
            'detail_foto' => 'file|max:1024|image', 
            'status' => 'required', 
        ]);
        
        if ($request->file('detail_foto'))
        {
            $validatedData['detail_foto']  = Storage::putFile('kerusakan-files',$request->file('detail_foto'));
        }

        if ($request->status == 2)
        {
            $validatedData['id_handler'] = Auth::user()->id;
        }
        
        InventoriesCrash::where('id', $id)->update($validatedData);

        return redirect('/backend/inventoriesCrash')->with('success', 'Data berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\InventoriesCrash  $InventoriesCrash
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = InventoriesCrash::destroy($id);

        return response()->json($data);
    }

    public function getDataTableProperty(Request $request)
    {
        if ($request->ajax())
        {
            $data = InventoriesCrash::with(['Accounts'])
            ->with(['Inventories'])
            ->with(['Rooms'])
            ->latest()->get();
            
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<a href="/backend/inventoriesCrash/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Edit</a> <button value="' . $row->id . '"  name="' . $row->inventory_name . '"class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->addColumn('status', function ($data)
            {
                $status = "<span class='inline badge w-100  bg-info'> Progress </span>";
                
                if($data->status == 2)
                    $status = '<span class="inline badge w-100  bg-success"> Done </span>';

                return $status;
            })->addColumn('photo', function ($data)
            {
               
                $photo = '<span class="inline badge w-100  bg-info"> # </span>';
                
                if(!empty($data->detail_foto)) {
                    $photo = '<span class="inline badge w-100  bg-warning"> 
                        <a href="'.asset('storage'). '/'.$data->detail_foto.'" target="_blank"> Photo </a> 
                    </span>';
                }
                
                return $photo;
            })->rawColumns(['action','status','photo'])->make(true);
        }
    }

    public function dashboardView()
    {
        
        $data = [
            'title' => "Data Kerusakan BMN",
            'date' => date('m/d/Y') ,
            'inventory_proses' => InventoriesCrash::select('id')->where('status', 1)->count(),
            'inventory_done' => InventoriesCrash::select('id')->where('status', 2)->count(),
        ];

        return view('backend.inventoriesCrash.dashboard', $data);
    }

    public function reportIndex()
    {
        return view('backend.inventoriesCrash.report');
    }

    public function exportReport(Request $request)
    {
        return Excel::download(new ExportInventoriesCrash($request) , 'Data Kerusakan BMN.xlsx');
    }
}
