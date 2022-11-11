<?php

namespace App\Http\Controllers;

use App\Models\RoomLoan;
use App\Models\Equipment;
use App\Models\Room;
use App\Models\Accounts;
use App\Models\RoomLoanDetails;
use App\Http\Requests\StoreRoomLoanRequest;
use App\Http\Requests\UpdateRoomLoanRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Hash;

class RoomLoanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ['title' => "Data Transaksi Ruangan", 'date' => date('m/d/Y') ];
        return view('backend.roomsLoan.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = ['title' => "Detail Transaksi Ruangan",
                'equipments' => Equipment::all() , 
                'accounts' => Accounts::all(),
                'rooms' => Room::all()
            ];

        return view('backend.roomsLoan.create', $data);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreRoomLoanRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRoomLoanRequest $request)
    {
        $validatedData = $request->validate([
            'id_pegawai' => 'required|max:48',
            'id_ruangan' => 'required|max:48',
            'kegiatan' => 'required|max:100',
            'detail_ruangan' => 'max:100|required',
            'waktu' => 'required',
            'tanggal' => 'required|date',
        ]);

        $validatedData['slug'] = substr(Hash::make('Ymdhis'),-5);
        
        $id = RoomLoan::create($validatedData)->id;
        
        $equipments = $request->input('equipment');
        
        $roomLoanDetails = [];
        if(!empty($equipments)) {
            foreach ($equipments as $eq => $e)
            {
                $prop = explode('_', $e);
                array_push($roomLoanDetails, ['roomloan_id' => $id, 'equipment_id' => $prop[0], 'jumlah' => $prop[1]]);
            }    
            
            RoomLoanDetails::insert($roomLoanDetails);
        }

        return redirect('/backend/roomLoan/')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RoomLoan  $roomLoan
     * @return \Illuminate\Http\Response
     */
    public function show(RoomLoan $roomLoan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RoomLoan  $roomLoan
     * @return \Illuminate\Http\Response
     */
    public function edit(RoomLoan $roomLoan)
    {
        $data = ['title' => "Detail Transaksi Ruangan",
            'equipments' => Equipment::all() , 
            'accounts' => Accounts::all(),
            'rooms' => Room::all(),
            'roomLoan' => $roomLoan, 
        ];

        return view('backend.roomsLoan.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateRoomLoanRequest  $request
     * @param  \App\Models\RoomLoan  $roomLoan
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRoomLoanRequest $request, RoomLoan $roomLoan)
    {
        $validatedData = $request->validate([
            'id_pegawai' => 'required|max:48',
            'id_ruangan' => 'required|max:48',
            'kegiatan' => 'required|max:100',
            'detail_ruangan' => 'max:100|required',
            'waktu' => 'required',
            'tanggal' => 'required|date',
        ]);
        
        $validatedData['id_pegawai'] = auth()->user()->id;

        RoomLoan::where('id', $roomLoan->id)->update($validatedData);
       
        return redirect('/backend/roomLoan/')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RoomLoan  $roomLoan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        RoomLoanDetails::where('roomloan_id', '=', $id)->delete();

        $datas = RoomLoan::destroy($id);
        
        return response()->json($datas);
    }

    public function getDataTableProperty(Request $request)
    {
        if ($request->ajax())
        {
            
            $data = RoomLoan::with(['Accounts','Rooms'])
                    ->select("*", DB::raw("DATE_FORMAT(tanggal, '%d %b %Y') as inventoryloan_tglpeminjaman"))->latest()->get();

            
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                if($row->status == 1){
                    $actionBtn = '<a href="/backend/roomLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a> <button value="' . $row->id . '"class="delete delete-product badge bg-danger btn-sm">Delete</button>';
                    } else{
                    $actionBtn = '<a href="/backend/roomLoan/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Detail</a>';
                    }
                return $actionBtn;

            })->addColumn('tanggal', function ($data)
            {
                $formatedDate = strtotime($data->tanggal);
                return date('d M Y', $formatedDate);

            })->addColumn('waktu', function ($data)
            {
                $formatedDate = strtotime($data->waktu);
                return date('H:i', $formatedDate);

            })->addColumn('status', function ($data)
            {
                $status = "<span class='inline badge w-100  bg-info'> Progress </span>";
                
                if($data->status == 2)
                    $status = '<span class="inline badge w-100  bg-success"> Done </span>';

                return $status;
            })->rawColumns(['action','status'])->make(true);
        }

    }
}
