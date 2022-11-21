<?php

namespace App\Http\Controllers;

use App\Models\Kendaraan;
use App\Http\Requests\StoreKendaraanRequest;
use App\Http\Requests\UpdateKendaraanRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class KendaraanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title' => "Data Kendaraan",
            'date' => date('m/d/Y'),
            'dataCreate' => Kendaraan::getTemplateFormData()

        ];

        return view('backend.kendaraans.management', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'title' => "Data Kendaraan",
            'date' => date('m/d/Y'),
            'dataCreate' => Kendaraan::getTemplateFormData()
        ];

        return view('backend.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreKendaraanRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreKendaraanRequest $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'nomor' => 'required',
            'kapasitas' => 'required',
        ]);


        Kendaraan::create($validatedData);

        if ($request->input('more'))
        {
            return redirect('/backend/kendaraan/create')->with('success', 'Data berhasil di tambahkan');
        }

        return redirect('/backend/kendaraan')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kendaraan  $kendaraan
     * @return \Illuminate\Http\Response
     */
    public function show(Kendaraan $kendaraan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kendaraan  $kendaraan
     * @return \Illuminate\Http\Response
     */
    public function edit(Kendaraan $kendaraan)
    {
        $data = Kendaraan::find($kendaraan->id, ['id', 'name', 'nomor', 'kapasitas']);

        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateKendaraanRequest  $request
     * @param  \App\Models\Kendaraan  $kendaraan
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateKendaraanRequest $request, $id)
    {
        $rules = [
            'name' => 'required',
            'nomor' => 'required',
            'kapasitas' => 'required',
        ];

        $updated = $request->validate($rules);

        Kendaraan::where('id', $id)->update($updated);

        return response()->json();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kendaraan  $kendaraan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Kendaraan::destroy($id);

        return response()->json($data);
    }

    public function getDataTable(Request $request)
    {
        if ($request->ajax())
        {
            $data = Kendaraan::latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success ">Edit</button>
                 <button value="' . $row->id . '"name="' . $row->name . '" class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }
}
