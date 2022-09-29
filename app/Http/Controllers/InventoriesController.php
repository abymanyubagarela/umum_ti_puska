<?php
/**
* Class and Function List:
* Function list:
* - __construct()
* - index()
* - exportInventories()
* - importInventories()
* - getDataTableInventories()
* - (()
* - getDataTableInventoriesLoan()
* - (()
* - generatePDF()
* - create()
* - store()
* - showData()
* - show()
* - edit()
* - update()
* - destroy()
* Classes list:
* - InventoriesController extends Controller
*/
namespace App\Http\Controllers;

use Barryvdh\DomPDF\PDF;
use App\Models\Inventories;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Exports\ExportInventories;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\StoreInventoriesRequest;
use App\Http\Requests\UpdateInventoriesRequest;
use App\Imports\ImportInventories;

class InventoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        // $this->middleware('superAdmin')->except(['index','show','getDataTableInventories']);
        // $this->middleware('BMN')->except(['index','show','getDataTableInventories']);
        // OR

    }
    public function index()
    {
        //
        $data = ['title' => "Data BMN", 'date' => date('m/d/Y') , 'dataCreate' => Inventories::getTemplateFormData()

        ];

        return view('backend.inventories.inventoriesManagement', $data);
    }

    public function exportInventories(Request $request)
    {

        return Excel::download(new ExportInventories($request) , 'Inventories.xlsx');
    }

    public function importInventories(Request $request)
    {
        Excel::import(new ImportInventories, $request->file('file')->store('files'));
        return redirect()->back();
    }

    public function getDataTableInventories(Request $request)
    {
        if ($request->ajax())
        {
            $data = Inventories::latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success ">Edit</button> <button value="' . $row->id . '"  name="' . $row->inventory_name . '"class="delete delete-product badge bg-danger ">Delete</button>';
                return $actionBtn;
            })->rawColumns(['action'])->make(true);
        }

    }
    public function getDataTableInventoriesLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = Inventories::where('inventory_isborrowed', 0)->where('inventory_condition','baik')->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<div value="' . $row->id . '" class="edit adding btn btn-secondary btn-sm">Tambah</div>';
                return $actionBtn;
            })->rawColumns(['action'])->make(true);
        }

    }

    public function generatePDF($title)
    {
        $data = ['title' => $title, 'date' => date('m/d/Y') ];

        if ($title == " ")
        {
            $pdf = PDF::loadView('pdfInventory', $data);
        };

        return $pdf->download('pdfInventory.pdf');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.create', ['title' => "Data BMN", 'dataCreate' => Inventories::getTemplateFormData()

        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreInventoriesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreInventoriesRequest $request)
    {

        $validatedData = $request->validate(['inventory_name' => 'required|max:255', 'inventory_nup' => 'required|max:255|unique:inventories', 'inventory_description' => 'required', 'inventory_condition' => 'nullable', 'inventory_brand' => 'nullable']);
        $validatedData['inventory_createdby'] = auth()->user()->id;
        Inventories::create($validatedData);
        if ($request->input('more'))
        {
            return redirect('/backend/inventories/create')->with('success', 'Data berhasil di tambahkan');
        }
        return redirect('/backend/inventories')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Inventories  $inventories
     * @return \Illuminate\Http\Response
     */
    public function showData(Request $request)
    {
        if ($request->ajax())
        {
            $data = Inventories::select('id', 'inventory_nup', 'inventory_name', 'inventory_brand', 'inventory_description')->whereIn('id', $request->inventory_id)->get();
            return response()->json($data);

        }
    }
    public function show($inventory_id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Inventories  $inventories
     * @return \Illuminate\Http\Response
     */
    public function edit($inventory_id)
    {
        //
        $inventory = Inventories::find($inventory_id, ['id', 'inventory_name', 'inventory_description', 'inventory_condition', 'inventory_nup', 'inventory_brand']);

        return response()->json($inventory);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateInventoriesRequest  $request
     * @param  \App\Models\Inventories  $inventories
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateInventoriesRequest $request, $inventory_id)
    {
        $rules = ['inventory_name' => 'required|max:255', 'inventory_nup' => 'required|max:255', 'inventory_description' => 'required', 'inventory_condition' => 'required', 'inventory_brand' => 'required'
        ];

        $updated = $request->validate($rules);
        $updated['inventory_updatedby'] = auth()->user()->id;
        Inventories::where('id', $inventory_id)->update($updated);
        return response()->json();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Inventories  $inventories
     * @return \Illuminate\Http\Response
     */
    public function destroy($inventory_id)
    {
        $inventory = Inventories::destroy($inventory_id);
        return response()->json($inventory);
    }
}

