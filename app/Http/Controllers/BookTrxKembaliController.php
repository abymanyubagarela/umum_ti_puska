<?php

namespace App\Http\Controllers;

use App\Models\BookTrx;
use App\Http\Requests\StoreBookTrxRequest;
use App\Http\Requests\UpdateBookTrxRequest;
use App\Models\Accounts;
use App\Models\Books;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class BookTrxKembaliController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ['title' => "Pengembalian", 'date' => date('m/d/Y'), 'status' => 3 ];
        
        return view('backend.booksLoan.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = ['title' => "Pengembalian",
                'accounts' => Accounts::all(),
                'books' => Books::all()
            ];

        return view('backend.booksLoan.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBookTrxRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBookTrxRequest $request)
    {
        $validatedData = $request->validate([
            'id_pegawai' => 'required|max:48',
            'tanggal' => 'required|date',
        ]);
        
        $books = $request->input('book');
        
        if(!empty($books)) {
            foreach ($books as $eq => $e) {
             
                BookTrx::create([
                    'id_buku' => $e, 
                    'id_pegawai' => $request->input('id_pegawai'),
                    'tanggal_peminjaman' => $request->input('tanggal'),                    
                ]);

                Books::where('id', $e)->update(['book_isavailable' => 0]);
            }    
        } else {
            return redirect('/backend/transaksi-buku-kembali/')->with('error', 'Tidak ada buku ditambahkan');
        } 

        return redirect('/backend/transaksi-buku-kembali/')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BookTrx  $bookTrx
     * @return \Illuminate\Http\Response
     */
    public function show(BookTrx $bookTrx)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BookTrx  $bookTrx
     * @return \Illuminate\Http\Response
     */
    public function edit(BookTrx $bookTrx)
    {
        $data = ['title' => "Detail Transaksi Buku",
            'books' => Books::all(),
            'bookTrx' => $bookTrx, 
        ];

        return view('backend.booksLoan.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBookTrxRequest  $request
     * @param  \App\Models\BookTrx  $bookTrx
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBookTrxRequest $request, BookTrx $bookTrx)
    {
        dd($bookTrx);
        $validatedData = $request->validate([
            'id' => 'required|max:48',
            'status' => 'required|max:48',
        ]);
        
        // BookTrx::where('id', $bookTrx->id)->update($validatedData);
       
        return redirect('/backend/transaksi-buku')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BookTrx  $bookTrx
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $datas = BookTrx::destroy($id);
        
        return response()->json($datas);
    }

    public function getDataTable(Request $request)
    {
        if ($request->ajax())
        {
            if(auth()->user()->account_role == "Super Admin"){
                $data = BookTrx::where('status', 3)->with(['Accounts','Books'])->latest()->get();
                
              } else {
                $data = BookTrx::where('status', 3)->where('id_pegawai',auth()->user()->id)->with(['Accounts','Books'])->latest()->get();
              }
            
            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                if(auth()->user()->account_role == 'user') {
                    return '<span class="badge badge-soft-warning">Waiting</span>';
                }
                
                $processBtn = '<button value="' . $row->id . '"name="' . $row->name . '" class="update-pinjam-buku btn btn-warning btn-sm" data-status="'.$row->status.'">Proceed</button>';

                return $processBtn;

            })->addColumn('tanggal_peminjaman', function ($data)
            {
                $formatedDate = strtotime($data->tanggal_peminjaman);
                
                return date('d M Y', $formatedDate);

            })->addColumn('tanggal_harus_kembali', function ($data)
            {
                $formatedDate = strtotime($data->tanggal_peminjaman. ' +21 day');
                
                return date('d M Y', $formatedDate);

            })->addColumn('tanggal_pengembalian', function ($data)
            {
                if($data->tanggal_pengembalian !== null) {
                    $formatedDate = strtotime($data->tanggal_pengembalian);
                    
                    return date('d M Y', $formatedDate);
                } else {
                    return '-';
                }
                

            })->addColumn('denda', function ($data)
            {
                $formatedDate = strtotime($data->tanggal_peminjaman);
                return date('d M Y', $formatedDate);

            })->addColumn('status', function ($data)
            {
                $status = 'Permintaan';

                switch ($data->status) {
                    case 2:
                        $status = 'Peminjaman';
                        break;

                    case 3:
                        $status = 'Pengembalian';
                        break;
                    default:
                        $status = 'Permintaan';
                        break;
                }
                
                return $status;

            })->rawColumns(['action'])->make(true);
        }
    }

    public function proceed(Request $request){
        BookTrx::where('id', $request->input('id'))->update(['status' => $request->input('status') + 1]);
        
        return redirect('/backend/transaksi-buku')->with('success', 'Data berhasil di proses');
    }
}
