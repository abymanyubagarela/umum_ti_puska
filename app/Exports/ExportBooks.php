<?php

namespace App\Exports;

use App\Models\BookTrx;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ExportBooks implements FromView
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
        $request['dateNext'] = date('Y-m-d',strtotime($request['dateNext'] . "+1 days"));
        if ($request['dateFrom']) {

            $data = [
                'details' => BookTrx::with(['Accounts'])
                    ->with(['Books'])
                    ->where('books_transaction.created_at', '>=', $this->request['dateFrom'])
                    ->where('books_transaction.created_at', '<=', $this->request['dateNext'])
                    ->where('books_transaction.status', '=', $this->request['status'])
                    ->orderBy('books_transaction.id', 'asc')->get(),
                'dateMin' => $request['dateFrom'],
                'dateMax' => $request['dateNext']
            ];
            // dd($request, $data);
            return view('backend.report.exportbooks', $data);
        }
    }
}
