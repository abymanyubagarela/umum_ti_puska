<?php

namespace App\Http\Controllers;

use App\Models\Room;
use App\Http\Requests\StoreRoomRequest;
use App\Http\Requests\UpdateRoomRequest;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ['title' => "Data Ruangan", 'date' => date('m/d/Y') , 'dataCreate' => Room::getTemplateFormData()

        ];

        return view('backend.rooms.management', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.create',
        ['title' => "Data Ruangan",
         'dataCreate' => Room::getTemplateFormData()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreRoomRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRoomRequest $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'detail_ruangan' => '',
        ]);

        
        Room::create($validatedData);

        if ($request->input('more'))
        {
            return redirect('/backend/rooms/create')->with('success', 'Data berhasil di tambahkan');
        }

        return redirect('/backend/rooms')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function show(Room $room)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function edit(Room $room)
    {
        $data = Room::find($room->id, ['id', 'name', 'detail_ruangan']);

        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateRoomRequest  $request
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRoomRequest $request, $id)
    {
        $rules = [
            'name' => 'required|max:255', 
            'detail_ruangan' => 'max:255', 
        ];

        $updated = $request->validate($rules);
        Room::where('id', $id)->update($updated);

        return response()->json();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Room::destroy($id);

        return response()->json($data);
    }

    public function getDataTableRooms(Request $request)
    {
        if ($request->ajax())
        {
            $data = Room::latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success ">Edit</button>
                 <button value="' . $row->id . '"name="' . $row->name . '" class="delete delete-product badge bg-danger ">Delete</button>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }
    
}
