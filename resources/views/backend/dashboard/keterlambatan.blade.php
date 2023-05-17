@extends('layouts.main')

@section('container')
<div class="content container-fluid">
    <div class="row">
        <div class="col-12 col-lg-12 col-xl-12">
            <div class="card flex-fill comman-shadow">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <h5 class="card-title">Peminjaman Melewati Batas Waktu</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table star-student table-hover table-center table-borderless table-striped">
                            <thead class="thead-light">
                                <tr>
                                    <th class="text-center">Anggota</th>
                                    <th class="text-center">Kode Buku</th>
                                    <th class="text-center">Judul</th>
                                    <th class="text-center">Tanggal Seharusnya Kembali</th>
                                    <th class="text-center">Chat WA</th>
                                </tr>
                            </thead>
                            <tbody>

                                @forelse ($buku_pinjam as $bp)
                                <tr>
                                    <td class="text-center">
                                        <div>{{ $bp->Accounts->account_name}}</div>
                                    </td>
                                    <td class="text-center">{{ $bp->Books->book_number}}</td>
                                    <td class="text-center">{{ $bp->Books->book_title}}</td>
                                    <td class="text-center">
                                        <div>{{ date_format (new DateTime($bp->tanggal_pengembalian), 'd M Y');
                                        }}</div>
                                        {{-- <div>{{ date_format($bp->tanggal_pengembalian, 'd M Y')}}</div> --}}
                                    </td>
                                    <td class="text-center"><a class="" href="http://wa.me/62{{ $bp->Accounts->account_handphone}}"><div class="btn btn-success">  Chat WA </div></a></td>
                                </tr>
                                @empty
                                <tr>
                                    <td class="text-center" colspan="4">
                                        <div>Tidak ada peminjaman</div>
                                    </td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection

@section('custom-script')
@endsection
