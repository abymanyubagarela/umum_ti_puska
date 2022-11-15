<?php

namespace App\Http\Controllers;

use App\Models\Equipment;
use App\Http\Requests\StoreEquipmentRequest;
use App\Http\Requests\UpdateEquipmentRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class EquipmentController extends Controller
{
    public function index()
    {
        $data = ['title' => "Data Peralatan", 'date' => date('m/d/Y') , 'dataCreate' => Equipment::getTemplateFormData()

        ];

        return view('backend.equipments.management', $data);
    }

    public function create()
    {
        return view('backend.create',
        ['title' => "Data Peralatan",
         'dataCreate' => Equipment::getTemplateFormData()
        ]);
    }

    public function store(StoreEquipmentRequest $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'keterangan' => '',
        ]);

        
        Equipment::create($validatedData);

        if ($request->input('more'))
        {
            return redirect('/backend/equipments/create')->with('success', 'Data berhasil di tambahkan');
        }

        return redirect('/backend/equipments')->with('success', 'Data berhasil di tambahkan');
    }

    public function show(Equipment $equipment)
    {
        //
    }

    public function edit(Equipment $equipment)
    {
        $data = Equipment::find($equipment->id, ['id', 'name', 'keterangan']);

        return response()->json($data);
    }

    public function update(UpdateEquipmentRequest $request, $id)
    {
        $rules = [
            'name' => 'required|max:255', 
            'keterangan' => 'max:255', 
        ];

        $updated = $request->validate($rules);
        
        Equipment::where('id', $id)->update($updated);

        return response()->json();
    }

    public function destroy($id)
    {
        $data = Equipment::destroy($id);

        return response()->json($data);
    }

    public function getDataTable(Request $request)
    {
        if ($request->ajax())
        {
            $data = Equipment::latest()->get();
            
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success ">Edit</button>
                 <button value="' . $row->id . '"name="' . $row->name . '" class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }

    public function getDataTableEquipment(Request $request)
    {
        if ($request->ajax())
        {
            $data = Equipment::latest()->get();
            
            return DataTables::of($data)->addIndexColumn()
            ->addColumn('action', function ($row) {
                $actionBtn = '<div value="' . $row->id . '" class="edit adding btn btn-secondary btn-sm">Tambah</div>';

                return $actionBtn;

            })->addColumn('jumlah', function ($row) {
                // $actionBtn = '<div value="' . $row->id . '" class="edit adding btn btn-secondary btn-sm">Tambah</div>';
                $actionBtn = '<input type="number" data-id="jumlah_'.$row->id.'" class="form-control jumlah" required min=1>';

                return $actionBtn;

            })->rawColumns(['action','jumlah'])->make(true);
        }
    }
}
