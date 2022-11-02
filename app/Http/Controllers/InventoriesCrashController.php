<?php

namespace App\Http\Controllers;

use App\Models\InventoriesCrash;
use App\Http\Requests\StoreInventoriesCrashRequest;
use App\Http\Requests\UpdateInventoriesCrashRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\DataTables;

class InventoriesCrashController extends Controller
{
    public function index()
    {
        $data = [
            'title' => "Data Kerusakan BMN", 
            'date' => date('m/d/Y') , 
            'dataCreate' => InventoriesCrash::getTemplateFormData()
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
            'id_barang' => 'required',
            'id_ruangan' => 'required',
            'detail_ruangan' => 'required',
            'detail_kerusakan' => 'required',
        ]);

        $validatedData['id_pegawai'] = Auth::user()->id;
        
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
    public function edit(InventoriesCrash $InventoriesCrash)
    {
        $data = InventoriesCrash::find($InventoriesCrash->id, ['id', 'id_barang', 'id_ruangan', 'detail_ruangan', 'detail_kerusakan']);

        return response()->json($data);
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
        $rules = [
            'name' => 'required|max:255', 
            'detail_ruangan' => 'max:255', 
        ];

        $updated = $request->validate($rules);
        InventoriesCrash::where('id', $id)->update($updated);

        return response()->json();
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
            $data = InventoriesCrash::latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success ">Edit</button> <button value="' . $row->id . '"  name="' . $row->inventory_name . '"class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }
}
