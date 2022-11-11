<?php

namespace App\Http\Controllers;

use App\Models\RoomLoanDetails;
use App\Http\Requests\StoreRoomLoanDetailsRequest;
use App\Http\Requests\UpdateRoomLoanDetailsRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class RoomLoanDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreRoomLoanDetailsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRoomLoanDetailsRequest $request)
    {
        $validatedData = $request->validate([
            'equipment_id' => 'required|max:255', 
            'jumlah' => 'required', 
            'roomloan_id' => 'required', 
        ]);
       
        $id = RoomLoanDetails::create($validatedData)->id;

        return $id;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RoomLoanDetails  $roomLoanDetails
     * @return \Illuminate\Http\Response
     */
    public function show(RoomLoanDetails $roomLoanDetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RoomLoanDetails  $roomLoanDetails
     * @return \Illuminate\Http\Response
     */
    public function edit(RoomLoanDetails $roomLoanDetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateRoomLoanDetailsRequest  $request
     * @param  \App\Models\RoomLoanDetails  $roomLoanDetails
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRoomLoanDetailsRequest $request, RoomLoanDetails $roomLoanDetails)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RoomLoanDetails  $roomLoanDetails
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $roomLoanDetails = RoomLoanDetails::destroy($id);

        return $roomLoanDetails;
    }

    public function getDataTableProperty(Request $request)
    {
        $roomLoanId = $request->roomLoanId;
        
        if ($request->ajax())
        {
            
            $data = RoomLoanDetails::with(['Equipments'])
            ->where('roomloan_id', $roomLoanId)
            ->latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '"class="delete-product badge bg-danger btn-sm">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }

    }
}
