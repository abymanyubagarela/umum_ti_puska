@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management edit">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />

<div class="row">
    <div class="col-md-8">
        <h1 class="h3 mb-1 inline"><strong>Daftar</strong> {{ $title }}</h1>
    </div>
</div>
<div class="row">
    <div class="container mt-4">
        <div class="container-form-export container-form-additional mb-4"  >
            <div class="row ">
                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                 @endif
                <form class="row g-3" method="post" action="/backend/roomLoan/" enctype="multipart/form-data" >
                    @method('post')
                    @csrf
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Peminjam</label>
                        <select class="select2input form-select" name="id_pegawai" required>
                            @foreach($accounts as $account)
                            @if(old('id_pegawai') == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Ruangan</label>
                        <select class="select2input form-select" name="id_ruangan" required>
                            @foreach($rooms as $room)
                            @if(old('id_ruangan') == $room->id)
                            <option value="{{ $room->id }}" selected>{{ $room->name }}</option>
                            @else
                            <option value="{{ $room->id }}">{{ $room->name }}</option>
                            @endif
                            @endforeach
                          </select>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Kegiatan</label>
                        <textarea name="kegiatan" class="form-control" value="{{ old('kegiatan') }}" required></textarea>
                    </div>
                   
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Detail Ruangan</label>
                        <textarea name="detail_ruangan" class="form-control" value="{{ old('detail_ruangan') }}" required></textarea>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                        <input type="date" name="tanggal" class="form-control" value="{{ old('tanggal') }}" required>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Waktu Peminjaman</label>
                        <input type="time" name="waktu" class="form-control" value="{{ old('waktu') }}" required>
                    </div>

                    <div class="col-12">
                        <div class="row mb-3">
                            <div class="col-md-8">
                                <h1 class="h3 mb-1 inline">Daftar Perlengkapan </h1>
                            </div>
                            <div class="col-md-4 sm-12">
                                <div class="btn btn-success open_modal float-end ubah-barang">Tambah Perlengkapan</div>
                            </div>
                        </div>
                        <table class="table table-bordered yajra-datatable mt-3 ">
                            <input type="hidden" id="typeEquipments" value="create" />
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Perlengkapan</th>
                                    <th>Jumlah</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                    <div class="col-12 mt-3">
                        <button type="submit" class="btn btn-lg btn-primary float-end">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection

@section('custom-script')

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session("success") }}');
</script>
@endif
@include('backend.roomsLoan.addEquipment')
@endsection



