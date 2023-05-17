<?php

namespace App\Http\Controllers;

use App\Models\Visitor;
use App\Http\Requests\StoreVisitorRequest;
use App\Http\Requests\UpdateVisitorRequest;
use Illuminate\Http\Request;

class VisitorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pengunjungPegawai()
    {
        $data = [
            'title' => "Data Pengunjung Pegawai",
            'date' => date('m/d/Y'),
            'visitors' => Visitor::select('visitors.*','accounts.account_name')->latest()->where('type','=','1')->leftJoin('accounts', 'visitors.account_id', '=', 'accounts.id')->get(),
            'alasan_in' => [
                ['id' => 0, 'name' =>'Peminjaman-Pengembalian'],
                ['id' => 1, 'name' =>'Membaca Buku/Majalah/Surat Kabar'],
                ['id' => 2, 'name' =>'Mengakses Koleksi Terbitan Digital'],
                ['id' => 3, 'name' =>'mengakses Koleksi Digital'],
                ['id' => 4, 'name' =>'Diskusi'],
                ['id' => 5, 'name' =>'Mengerjakan Tugas'],
                ['id' => 6, 'name' =>'Penelitian'],

            ],
        ];
        foreach ($data['visitors'] as $key => $v) {
            $r = explode(',', $v->reason_id);
            foreach ($r as $i) {
               $v->alasan .= $data['alasan_in'][$i]['name'].'<br>';
            }
        }

        return view('backend.visitors.internal', $data);
    }

    public function pengunjungExternal()
    {
        $data = [
            'title' => "Data Pengunjung Umum", 'date' => date('m/d/Y'),
            'visitors' => Visitor::select('visitors.*')->latest()->where('type','=','2')->get(),
            'alasan_out' => [
                ['id' => 1, 'name' =>'Penelitian'],
                ['id' => 2, 'name' =>'Kunjungan Biasa'],
            ],
            'instansi' => [
                ['id' => 0, 'name' =>'Kementerian/Lembaga'],
                ['id' => 1, 'name' =>'LSM'],
                ['id' => 2, 'name' =>'Perguruan Tinggi'],
                ['id' => 3, 'name' =>'Sekolah Menegah'],
                ['id' => 4, 'name' =>'Media'],
                ['id' => 5, 'name' =>'Umum'],
            ],
        ];

        return view('backend.visitors.external', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVisitorRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVisitorRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function show(Visitor $visitor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function edit(Visitor $visitor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVisitorRequest  $request
     * @param  \App\Models\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVisitorRequest $request, Visitor $visitor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Visitor $visitor)
    {
        //
    }

    public function submitTamu(Request $request)
    {
        $validatedData = null;

        $type = $request->input('type');

        if ($type == 'ex') {
            $validatedData = $request->validate([
                'name' => 'required',
                'email' => 'required',
                'phone' => 'required',
                'instansi_id' => 'required',
                'instansi' => 'required',
                'reason_id' => 'required',
                'rate' => 'required',
            ]);
            $validatedData['type'] = 2;
        } else {
            $validatedData = $request->validate([
                'account_id' => 'required',
                'rate' => 'required',
                'reason_id' => 'required'
            ]);
            $validatedData['reason_id'] = implode(",", $validatedData['reason_id']);
        }

        Visitor::create($validatedData);

        return redirect('/buku-tamu')->with('success', 'Pengunjung berhasil di tambahkan');
    }
}
