<?php

namespace App\Http\Controllers\Api;

use App\Exports\ExportVehiclesLoan;
use App\Http\Controllers\Controller;
use App\Models\VehicleLoan;
use App\Http\Requests\StoreVehicleLoanRequest;
use App\Http\Requests\UpdateVehicleLoanRequest;
use App\Models\Accounts;
use App\Models\Drivers;
use App\Models\Kendaraan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\DataTables;

class VehicleLoanApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return VehicleLoan::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            $data = [
                'title' => "Detail Transaksi Kendaraan",
                'vehicles' => Kendaraan::all(), 
                'accounts' => Accounts::all(),
                'drivers' => Drivers::driversSelectOption(),
            ];

        return view('backend.vehicleLoan.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVehicleLoanRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVehicleLoanRequest $request)
    {
        $validatedData = $request->validate([
            'account_id' => 'required|max:48',
            'vehicle_id' => 'required|max:48',
            'driver_id' => 'required|max:48',            
            'tujuan' => 'required|max:100',
            'keperluan' => 'max:100|required',
            'tanggal' => 'required|date',
            'waktu' => 'required',
        ]);

        $validatedData['slug'] = substr(Hash::make('Ymdhis'),-5);
        
        $vehicleLoan = VehicleLoan::create($validatedData)->id;

        return response()->json($vehicleLoan, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return VehicleLoan::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Http\Response
     */
    public function edit(VehicleLoan $vehicleLoan)
    {
        $data = [
            'title' => "Detail Transaksi Kendaraan",
            'vehicleLoan' => $vehicleLoan, 
            'vehicles' => Kendaraan::all() , 
            'accounts' => Accounts::all(),
            'drivers' => Drivers::driversSelectOption(),
        ];
        
        return view('backend.vehicleLoan.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVehicleLoanRequest  $request
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVehicleLoanRequest $request, VehicleLoan $vehicleLoan)
    {
        $validatedData = $request->validate([
            'account_id' => 'required|max:48',
            'vehicle_id' => 'required|max:48',
            'driver_id' => 'required|max:48',            
            'tujuan' => 'required|max:100',
            'keperluan' => 'max:100|required',
            'tanggal' => 'required|date',
            'waktu' => 'required',
        ]);
        
        VehicleLoan::where('id', $vehicleLoan->id)->update($validatedData);
       
        return redirect('/backend/vehicleLoan/')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        VehicleLoan::destroy($id);
        
        return response()->json();
    }

    // https://www.toptal.com/laravel/restful-laravel-api-tutorial

}
