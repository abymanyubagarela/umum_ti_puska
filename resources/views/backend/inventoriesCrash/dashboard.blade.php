@extends('backend.layouts.main')

@section('container')
<h1 class="h3 mb-3"><strong>Analytics</strong> Dashboard</h1>
<div class="row">
    <div class="row">
        <div class="col-xl-12 col-xxl-12 d-flex">
            <div class="w-100">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mt-0">
                                        <h5 class="card-title">Jumlah Transaksi</h5>
                                    </div>
                                </div>
                                <h1 class="mt-1 mb-3">{{ $inventory_proses + $inventory_done }}</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mt-0">
                                        <h5 class="card-title">Jumlah Selesai</h5>
                                    </div>
                                </div>
                                <h1 class="mt-1 mb-3">{{ $inventory_proses }}</h1>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mt-0">
                                        <h5 class="card-title">Jumlah Proses</h5>
                                    </div>
                                </div>
                                <h1 class="mt-1 mb-3">{{ $inventory_done }}</h1>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

    </div>
</div>
@endsection

