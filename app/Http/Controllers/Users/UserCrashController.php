<?php

namespace App\Http\Controllers\Users;

use App\Models\InventoriesCrash;
use App\Models\Accounts;
use App\Models\Inventories;
use App\Models\Room;
use App\Http\Requests\StoreInventoriesCrashRequest;
use App\Http\Requests\UpdateInventoriesCrashRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;


class UserCrashController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ['title' => "Data Kerusakan BMN", 'date' => date('m/d/Y') ];
        return view('frontend.userCrash.index', $data);
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

        return view('frontend.userCrash.create', $data);
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
            'detail_foto' => 'file|max:1024|image', 
        ]);

        $validatedData['id_pegawai'] = Auth::user()->id;

        if ($request->file('detail_foto'))
        {
            $validatedData['detail_foto']  = Storage::putFile('kerusakan-files',$request->file('detail_foto'));
        }
        
        InventoriesCrash::create($validatedData);

        return redirect('/kerusakan-bmn')->with('success', 'Data berhasil di tambahkan');
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
    public function edit(InventoriesCrash $userCrash)
    {
        
        $data = [
            'title' => "Data Kerusakan BMN", 
            'date' => date('m/d/Y'), 
            'dataCreate' => InventoriesCrash::getTemplateFormData(),
            'inventoriesCrash' => $userCrash,
            'accounts' => Accounts::all(),
            'inventories' => Inventories::all(),
            'rooms' => Room::all(),
        ];  

        return view('frontend.userCrash.edit', $data);
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
        
        $validatedData = $request->validate([
            'id_barang' => 'required',
            'id_ruangan' => 'required',
            'detail_ruangan' => 'required',
            'detail_kerusakan' => 'required',
            'detail_foto' => 'file|max:1024|image', 
        ]);
        
        if ($request->file('detail_foto'))
        {
            $validatedData['detail_foto']  = Storage::putFile('kerusakan-files',$request->file('detail_foto'));
        }

        if ($request->status == 2)
        {
            $validatedData['id_handler'] = Auth::user()->id;
        }
        
        InventoriesCrash::where('id', $id)->update($validatedData);

        return redirect('/kerusakan-bmn')->with('success', 'Data berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
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
            $data = InventoriesCrash::with(['Accounts'])
            ->with(['Inventories'])
            ->with(['Rooms'])
            ->where('id_pegawai', Auth::user()->id)
            ->latest()->get();
            
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<a href="/kerusakan-bmn/' . $row->id . '/edit" class="edit open_modal badge bg-success btn-sm">Edit</a> <button value="' . $row->id . '"  name="' . $row->inventory_name . '"class="delete delete-product badge bg-danger ">Delete</button>';
                

                if( $row->status == 2) {
                    $actionBtn = "<span class='inline badge w-100  bg-success'> Selesai </span>";
                }

                return $actionBtn;

            })->addColumn('status', function ($data)
            {
                $status = "<span class='inline badge w-100  bg-info'> Progress </span>";
                
                if($data->status == 2)
                    $status = '<span class="inline badge w-100  bg-success"> Done </span>';

                return $status;
            })->addColumn('photo', function ($data)
            {
               
                $photo = '<span class="inline badge w-100  bg-info"> # </span>';
                
                if(!empty($data->detail_foto)) {
                    $photo = '<span class="inline badge w-100  bg-warning"> 
                        <a href="'.storage_path().'/app/'.$data->detail_foto.'" target="_blank"> Photo </a> 
                    </span>';
                }
                
                return $photo;
            })->rawColumns(['action','status','photo'])->make(true);
        }
    }
}
