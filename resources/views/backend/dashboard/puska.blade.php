@extends('layouts.main')

@section('container')
<div class="content container-fluid">
    <div class="row">
        <div class="col-xl-3 col-sm-6 col-12 d-flex">
            <div class="card bg-comman w-100">
                <div class="card-body">
                    <div class="db-widgets d-flex justify-content-between align-items-center">
                        <div class="db-info">
                            <h6>Total Buku</h6>
                            <h3>{{ $total_buku }}</h3>
                        </div>
                        <div class="db-icon">
                            <img src="/assets/img/icons/teacher-icon-01.svg" alt="Dashboard Icon">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12 d-flex">
            <div class="card bg-comman w-100">
                <div class="card-body">
                    <div class="db-widgets d-flex justify-content-between align-items-center">
                        <div class="db-info">
                            <h6>Total ISBN</h6>
                            <h3>{{ $total_isbn }}</h3>
                        </div>
                        <div class="db-icon">
                            <img src="/assets/img/icons/student-icon-02.svg" alt="Dashboard Icon">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12 d-flex">
            <div class="card bg-comman w-100">
                <div class="card-body">
                    <div class="db-widgets d-flex justify-content-between align-items-center">
                        <div class="db-info">
                            <h6>Peminjaman</h6>
                            <h3>{{ $total_pinjam }}</h3>
                        </div>
                        <div class="db-icon">
                            <img src="/assets/img/icons/teacher-icon-02.svg" alt="Dashboard Icon">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12 d-flex">
            <div class="card bg-comman w-100">
                <div class="card-body">
                    <div class="db-widgets d-flex justify-content-between align-items-center">
                        <div class="db-info">
                            <h6>Pengembalian</h6>
                            <h3>{{ $total_kembali }}</h3>
                        </div>
                        <div class="db-icon">
                            <img src="/assets/img/icons/student-icon-01.svg" alt="Dashboard Icon">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-12 col-lg-12 col-xl-12">
            <div class="card flex-fill comman-shadow">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <h5 class="card-title">Peminjaman Terbaru</h5>
                        </div>
                        <div class="col-6">
                            <ul class="chart-list-out">
                                <li class="lesson-view-all"><a href="/backend/transaksi-buku-pinjam">View All</a></li>
                            </ul>
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
                                    <th class="text-center">Created</th>
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
                                        <div>{{ date_format($bp->created_at, 'd M Y')}}</div>
                                    </td>
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

        <div class="col-12 col-lg-12 col-xl-12">
            <div class="card flex-fill comman-shadow">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <h5 class="card-title">Pengembalian Terbaru</h5>
                        </div>
                        <div class="col-6">
                            <ul class="chart-list-out">
                                <li class="lesson-view-all"><a href="/backend/transaksi-buku-kembali">View All</a></li>
                            </ul>
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
                                    <th class="text-center">Created</th>
                                </tr>
                            </thead>
                            <tbody>

                                @forelse ($buku_kembali as $bp)
                                <tr>
                                    <td class="text-center">
                                        <div>{{ $bp->Accounts->account_name}}</div>
                                    </td>
                                    <td class="text-center">{{ $bp->Books->book_number}}</td>
                                    <td class="text-center">{{ $bp->Books->book_title}}</td>
                                    <td class="text-center">
                                        <div>{{ date_format($bp->created_at, 'd M Y')}}</div>
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td class="text-center" colspan="4">
                                        <div>Tidak ada pengembalian</div>
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