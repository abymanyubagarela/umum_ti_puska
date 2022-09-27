<?php
/**
* Class and Function List:
* Function list:
* - index()
* - exportAccounts()
* - importAccounts()
* - getDataTableAccounts()
* - (()
* - create()
* - store()
* - show()
* - edit()
* - update()
* - passwordUpdate()
* - passwordUpdateUser()
* - destroy()
* Classes list:
* - AccountsController extends Controller
*/
namespace App\Http\Controllers;

use App\Models\Accounts;
use Illuminate\Http\Request;
use App\Exports\ExportAccounts;
use App\Imports\ImportAccounts;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\StoreAccountsRequest;
use App\Http\Requests\UpdateAccountsRequest;

class AccountsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('Super Admin');

        $data = ['title' => "Data Akun", 'date' => date('m/d/Y') , 'dataCreate' => Accounts::getTemplateFormData() ];

        return view('backend.accounts.index', $data);
    }

    public function exportAccounts(Request $request)
    {

        return Excel::download(new ExportAccounts($request) , 'Accounts.xlsx');
    }

    public function importAccounts(Request $request)
    {
        Excel::import(new ImportAccounts, $request->file('file')->store('files'));
        return redirect()->back();
    }

    public function getDataTableAccounts(Request $request)
    {
        if ($request->ajax())
        {
            $data = Accounts::latest()->get();
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $actionBtn = '<button value="' . $row->id . '" class="edit open_modal badge bg-success btn-sm">Edit</button> <button value="' . $row->id . '"  name="' . $row->account_name . '"class="delete delete-product badge bg-danger btn-sm">Delete</button>';
                return $actionBtn;
            })->rawColumns(['action'])->make(true);
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('backend.create', ['title' => "Data Akun", 'dataCreate' => Accounts::getTemplateFormData()

        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreAccountsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAccountsRequest $request)
    {
        //
        $validatedData = $request->validate(['account_name' => 'required|max:255', 'account_nip_bpk' => 'required|max:255', 'account_nip_bkn' => 'required', 'account_email' => 'max:255', 'account_unit' => 'max:255', 'account_role' => 'max:255|required', 'account_tmt' => 'max:255', 'account_status' => 'max:255', 'account_golongan' => 'max:255', 'account_jabatan' => 'max:255', 'account_pendidikan' => 'max:255', 'account_agama' => 'max:255', ]);

        Accounts::create($validatedData);
        if ($request->input('more'))
        {
            return redirect('/backend/accounts/create')->with('success', 'Data berhasil di tambahkan');
        }
        return redirect('/backend/accounts')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Http\Response
     */
    public function show(Accounts $accounts)
    {
        $account = Accounts::all();

        return response()->json($account);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Http\Response
     */
    public function edit($account_id)
    {
        $account = Accounts::find($account_id);

        return response()->json($account);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateAccountsRequest  $request
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAccountsRequest $request, $account_id)
    {

        //
        $rules = ['account_name' => 'required|max:255', 'account_nip_bpk' => 'required|max:255', 'account_nip_bkn' => 'required', 'account_email' => 'max:255', 'account_unit' => 'max:255', 'account_role' => 'max:255|required', 'account_tmt' => 'max:255', 'account_status' => 'max:255', 'account_golongan' => 'max:255', 'account_jabatan' => 'max:255', 'account_pendidikan' => 'max:255', 'account_agama' => 'max:255', ];

        $updated = $request->validate($rules);
        Accounts::where('id', $account_id)->update($updated);
        return response()->json();
    }
    public function passwordUpdate(Request $request, $account_id)
    {
        $rules = ['password' => 'required|max:255', ];

        $updated = $request->validate($rules);
        $updated['password'] = bcrypt($updated['password']);
        Accounts::where('id', $account_id)->update($updated);
        return $updated;
    }
    public function passwordUpdateUser(Request $request)
    {
        $rules = ['oldpassword' => 'current_password', 'newpassword' => 'required|min:6|confirmed'];

        $updated = $request->validate($rules);
        $updated['password'] = bcrypt($updated['newpassword']);
        Accounts::where('id', auth()->user()->id)->update(array(
            'password' => $updated['password']
        ));

        return back()->with('success', 'Password berhasil diganti');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Http\Response
     */
    public function destroy($account_id)
    {
        //
        $account = Accounts::destroy($account_id);
        return response()->json($account);
    }
}

