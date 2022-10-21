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
    public function index()
    {
        $this->authorize('Super Admin');

        $data = ['title' => "Data Akun", 'date' => date('m/d/Y') , 'dataCreate' => Accounts::getTemplateFormData() ];

        return view('backend.accounts.index', $data);
    }

    public function create()
    {
        //
        return view('backend.create', ['title' => "Data Akun", 'dataCreate' => Accounts::getTemplateFormData()
        ]);
    }

    public function store(StoreAccountsRequest $request)
    {
        // Validasi Simpan Data
        $validatedData = $request->validate([
            'account_name' => 'required|max:128',
            'account_nip_bpk' => 'required|unique:accounts',
            'account_nip_bkn' => 'required|unique:accounts',
            'account_email' => 'max:64|email',
            'account_unit' => 'max:64|required',
            'account_role' => 'max:48|required',
            'account_tmt' => 'max:20',
            'account_status' => 'max:16',
            'account_golongan' => 'max:10',
            'account_jabatan' => 'max:64',
            'account_pendidikan' => 'max:12',
            'account_agama' => 'max:24',
            'account_handphone' => 'numeric|digits_between:8,15' ]);

        Accounts::create($validatedData);
        if ($request->input('more'))
        {
            return redirect('/backend/accounts/create')->with('success', 'Data berhasil di tambahkan');
        }
        return redirect('/backend/accounts')->with('success', 'Data berhasil di tambahkan');
    }

    public function show(Accounts $accounts)
    {
        $account = Accounts::all();

        return response()->json($account);

    }

    public function edit($account_id)
    {
        $account = Accounts::find($account_id);

        return response()->json($account);
    }

    public function update(UpdateAccountsRequest $request, $account_id)
    {

        //Validate Update Data
        $rules = [
        'account_name' => 'required|max:128',
        'account_nip_bpk' => 'required',
        'account_nip_bkn' => 'required',
        'account_email' => 'max:64|email',
        'account_unit' => 'max:64|required',
        'account_role' => 'max:48|required',
        'account_tmt' => 'max:20',
        'account_status' => 'max:16',
        'account_golongan' => 'max:10',
        'account_jabatan' => 'max:64',
        'account_pendidikan' => 'max:12',
        'account_agama' => 'max:24',
        'account_handphone' => 'numeric|digits_between:8,15', ];

        $updated = $request->validate($rules);
        Accounts::where('id', $account_id)->update($updated);
        return response()->json();
    }
    public function passwordUpdate(Request $request, $account_id)
    {
        // validated password Update
        $rules = ['password' => 'required|max:255', ];

        $updated = $request->validate($rules);
        $updated['password'] = bcrypt($updated['password']);
        Accounts::where('id', $account_id)->update($updated);

        return $updated;
    }
    public function passwordUpdateUser(Request $request)
    {
        // Validate Password Update from User
        $rules = ['oldpassword' => 'current_password', 'newpassword' => 'required|min:6|confirmed'];

        $updated = $request->validate($rules);
        $updated['password'] = bcrypt($updated['newpassword']);
        Accounts::where('id', auth()->user()->id)->update(array(
            'password' => $updated['password']
        ));

        return back()->with('success', 'Password berhasil diganti');
    }

    public function destroy($account_id)
    {
        $account = Accounts::destroy($account_id);
        return response()->json($account);
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
}

