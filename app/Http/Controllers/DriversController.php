<?php

namespace App\Http\Controllers;

use App\Models\Drivers;
use App\Http\Requests\StoreDriversRequest;
use App\Http\Requests\UpdateDriversRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class DriversController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title' => "Data Drivers", 
            'date' => date('m/d/Y'), 
            'dataCreate' => Drivers::getTemplateFormData()
        ];
        
        return view('backend.drivers.management', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'title' => "Data Drivers", 
            'date' => date('m/d/Y'), 
            'dataCreate' => Drivers::getTemplateFormData()
        ];

        return view('backend.drivers.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreDriversRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDriversRequest $request)
    {
        $validatedData = $request->validate([
            'account_id' => 'required',
        ]);

        
        Drivers::create($validatedData);

        if ($request->input('more'))
        {
            return redirect('/backend/driver/create')->with('success', 'Data berhasil di tambahkan');
        }

        return redirect('/backend/driver')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Drivers  $drivers
     * @return \Illuminate\Http\Response
     */
    public function show(Drivers $drivers)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Drivers  $drivers
     * @return \Illuminate\Http\Response
     */
    public function edit(Drivers $driver)
    {
        $data = Drivers::find($driver->id, ['id', 'account_id']);

        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateDriversRequest  $request
     * @param  \App\Models\Drivers  $drivers
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDriversRequest $request, $id)
    {
        $rules = [
            'account_id' => 'required',
        ];

        $updated = $request->validate($rules);

        Drivers::where('id', $id)->update($updated);

        return response()->json();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Drivers  $drivers
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Drivers::destroy($id);

        return response()->json($data);
    }

    public function getDataTable(Request $request)
    {
        if ($request->ajax())
        {
            $data = Drivers::with(['Accounts'])->latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '"name="' . $row->name . '" class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }
}
