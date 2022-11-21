<?php

namespace App\Http\Controllers;

use App\Exports\ExportVehiclesLoan;
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

class VehicleLoanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ['title' => "Data Transaksi Kendaraan", 'date' => date('m/d/Y') ];
        return view('backend.vehicleLoan.index', $data);
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
        
        VehicleLoan::create($validatedData)->id;
        
        return redirect('/backend/vehicleLoan/')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Http\Response
     */
    public function show(VehicleLoan $vehicleLoan)
    {
        //
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

    public function getDataTableProperty(Request $request)
    {
        if ($request->ajax())
        {
            
            $data = VehicleLoan::with(['Accounts','Drivers','Vehicles'])->latest()->get();
                  
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<a href="/backend/vehicleLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Edit</a> 
                <button value="' . $row->id . '" name="'.$row->name.'" class="delete delete-product badge bg-danger btn-sm">Delete</button>';
                return $actionBtn;

            })->addColumn('tanggal', function ($data)
            {
                $formatedDate = strtotime($data->tanggal);

                return date('d M Y', $formatedDate);

            })->addColumn('waktu', function ($data)
            {
                $formatedDate = strtotime($data->waktu);

                return date('H:i', $formatedDate);

            })->addColumn('driver', function ($data)
            {      
              
                $data = Accounts::find($data->Drivers->account_id);
                
                return $data->account_name;

            })->rawColumns(['action'])->make(true);
        }

    }

    public function reportIndex()
    {
        return view('backend.vehicleLoan.report');
    }

    public function exportReport(Request $request)
    {
        return Excel::download(new ExportVehiclesLoan($request) , 'Data Peminjaman Kendaraan.xlsx');
    }
}
