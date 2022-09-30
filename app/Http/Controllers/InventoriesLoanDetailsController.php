<?php

namespace App\Http\Controllers;

use App\Models\Inventories;
use Illuminate\Http\Request;
use App\Models\InventoriesLoanDetails;
use Yajra\DataTables\Facades\DataTables;

class InventoriesLoanDetailsController extends Controller
{

    public function getDataTableInventoriesLoanDetails(Request $request)
    {
        $inventoriesLoanIds = $request->inventoriesLoanId;
        if ($request->ajax())
        {
            $data = InventoriesLoanDetails::with(['Inventories'])->where('inventoryloan_id', $inventoriesLoanIds)->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<div value="' . $row->id . '"  name="' . $row->inventory_id . '"class="delete delete-product inline badge bg-danger ">Hapus</div>';
                return $actionBtn;
            })->rawColumns(['action'])->make(true);
        }

    }

    public function index()
    {

    }

    public function create()
    {

    }

    public function store(Request $request)
    {
        //
        $validatedData = $request->validate(['inventoryloan_id' => 'required|max:255', 'inventory_id' => 'required|max:255', ]);
        Inventories::where('id', $validatedData['inventory_id'])->update(array(
            'inventory_isborrowed' => '1'
        ));
        $id = InventoriesLoanDetails::create($validatedData)->id;
        return $id;
    }

    public function show(InventoriesLoanDetails $inventoriesLoanDetails)
    {
        //

    }

    public function edit(InventoriesLoanDetails $inventoriesLoanDetails)
    {
        //

    }

    public function update(Request $request, InventoriesLoanDetails $inventoriesLoanDetails)
    {
        //

    }

    public function destroy($inventoriesLoanDetails_id)
    {
        $id = InventoriesLoanDetails::select('inventory_id')->where('id', $inventoriesLoanDetails_id)->get();
        Inventories::where('id', $id[0]['inventory_id'])->update(array(
            'inventory_isborrowed' => 0
        ));
        $inventoriesLoanDetails = InventoriesLoanDetails::destroy($inventoriesLoanDetails_id);

        return $inventoriesLoanDetails;
    }
}

