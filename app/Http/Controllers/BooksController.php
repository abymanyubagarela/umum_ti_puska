<?php

namespace App\Http\Controllers;

use App\Exports\BooksCollectionExport;
use App\Models\Books;
use App\Http\Requests\StorebooksRequest;
use App\Http\Requests\UpdatebooksRequest;
use App\Imports\ImportBooks;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title' => "Data Buku", 'date' => date('m/d/Y') ,
            'dataCreate' => Books::getTemplateFormData()
        ];

        return view('backend.books.management', $data);
    }

    public function create()
    {
        return view('layouts.create',
        ['title' => "Data Buku",
         'dataCreate' => Books::getTemplateFormData()
        ]);
    }

    public function store(StorebooksRequest $request)
    {
        $validatedData = $request->validate([
            'book_number' => 'required',
            'book_title' => 'required',
            'book_firstname' => 'required',
            'book_lastname' => 'required',
            'book_author' => 'required',
            'book_publisher' => 'required',
            'book_city' => 'required',
            'book_year' => 'required',
            'book_class' => 'required',
            'book_classcode' => 'required',
            'book_subject' => 'required',
            'book_acq' => 'required',
            'book_location' => 'required',
            'book_isbn' => '',
            'book_nup' => '',
            'book_brand' => '',
        ]);

        Books::create($validatedData);

        if ($request->input('more'))
        {
            return redirect('/backend/books/create')->with('success', 'Data berhasil di tambahkan');
        }

        return redirect('/backend/books')->with('success', 'Data berhasil di tambahkan');
    }

    public function show(Books $book)
    {
        //
    }
    public function export(Request $request)
    {
        return Excel::download(new BooksCollectionExport($request) , 'Data Buku.csv',\Maatwebsite\Excel\Excel::CSV);
    }

    public function edit(Books $books)
    {
        $data = [
            'title' => "Data Buku",
            'date' => date('m/d/Y') ,
            'dataCreate' => Books::getTemplateFormData(),
            'detail' => $books,
        ];
        // dd($data);
        return view('layouts.edit', $data);
    }

    public function update(UpdatebooksRequest $request, Books $books)
    {
        $rules = [
            'book_number' => 'required',
            'book_title' => 'required',
            'book_firstname' => 'required',
            'book_lastname' => 'required',
            'book_author' => 'required',
            'book_publisher' => 'required',
            'book_city' => 'required',
            'book_year' => 'required',
            'book_class' => 'required',
            'book_classcode' => 'required',
            'book_subject' => 'required',
            'book_acq' => 'required',
            'book_location' => 'required',
            'book_isbn' => '',
            'book_nup' => '',
            'book_brand' => '',
        ];

        $validatedData = $request->validate($rules);

        Books::where('id', $books->id)->update($validatedData);

        return redirect('/backend/books')->with('success', 'Data berhasil diubah');
    }

    public function destroy($id)
    {
        $data = Books::destroy($id);

        return response()->json($data);
    }

    public function getDataTable(Request $request)
    {
        if ($request->ajax())
        {
            $data = Books::latest()->get();

            return DataTables::of($data)->addIndexColumn()->addColumn('action', function ($row)
            {
                $editBtn = '<button style="margin-right:2px;color:white" value="/backend/book/' . $row->id . '/edit" class="edit-product btn bg-success btn-sm">Ubah</button>';

                $deteleBtn = '<button value="' . $row->id . '"name="' . $row->name . '" class="delete delete-product btn btn-danger btn-sm ">Hapus</button>';

                return $editBtn.$deteleBtn;

            })->addColumn('isBMN', function ($row) {

                return $row->book_acq == null ? '-' : $row->book_acq;

            })->rawColumns(['action'])->make(true);
        }
    }

    public function getDataTableLoan(Request $request)
    {
        if ($request->ajax())
        {
            $data = Books::where('book_isavailable', 1)->latest()->get();

            return DataTables::of($data)->addIndexColumn()
            ->addColumn('action', function ($row) {
                $actionBtn = '<div value="' . $row->id . '" class="edit adding btn bg-info btn-sm">Tambah</div>';

                return $actionBtn;

            })->rawColumns(['action'])->make(true);
        }
    }

    public function importXlsx()
    {
        Excel::import(new ImportBooks, public_path().'/BukuIndux.csv');
    }
}
