<?php

namespace App\Exports;

use App\Models\Books;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class BooksCollectionExport implements FromView
{
   /**
     * @return \Illuminate\Support\Collection
     */

     protected $request;

     function __construct($request)
     {
         $this->request = $request;
     }

     public function view(): View
     {
         $request = $this->request;
         if ($request['export']) {
            if($request['export'] == "BMN"){
                $status = 1;
                $data = [
                    'details' => Books::where("isBMN","=",$status)->
                       get(),
                   'Jenis' => $request['export']
                ];
            } else if ($request['export'] == "Bukan BMN"){
                $status = 0;
                $data = [
                    'details' => Books::where("isBMN","=",$status)->
                       get(),
                   'Jenis' => $request['export']
                ];
            } else {
                $data = [
                   'details' => Books::get(),
                   'Jenis' => $request['export']
                ];
            }

            //  dd($request, $data);
             return view('backend.report.exportBooksCollection', $data);
         }
     }
}
