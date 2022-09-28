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
    <div class="col-md-4">
        <form action="{{ route('export-InventoriesLoanDetail') }}" method="POST" enctype="multipart/form-data">
            @csrf
            {{-- <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-3 control-label">NUP</label>
                <input type="text" class="form-control inputData" id="inventory_nup" name="inventory_nup" placeholder="nup" value="">
            </div> --}}
            {{-- <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-3 mb-2 control-label">Kondisi</label>
                <select class="form-select inputData" aria-label="Default select example" id="inventory_condition" name="inventory_condition">
                    <option value="all">Semua</option>
                    <option value="baik">Baik</option>
                    <option value="rusak">Rusak</option>
                </select>
            </div> --}}
        </form>
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
                <form class="row g-3" method="post" action="/backend/inventoriesLoan/" enctype="multipart/form-data">
                    @method('post')
                    @csrf
                    <input type="hidden" name="inventoryloan_status" value="Belum diproses"/>
                    <div class="col-md-12">
                        <label for="inputPassword4" class="form-label">Jenis Transaksi</label>
                        <select class="form-select" name="inventoryloan_type" required>
                            <option value="Peminjaman" {{ old('inventoryloan_status') == "Peminjaman" ? 'selected' : '' }}>Peminjaman</option>
                            <option {{ old('inventoryloan_type') == "Pengembalian" ? 'selected' : '' }} value="Pengembalian">Pengembalian</option>
                        </select>
                      </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Peminjam</label>
                        <select class="select2input form-select" name="account_id" required>
                            @foreach($accounts as $account)
                            @if(old('account_id') == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                      </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Penanggung Jawab</label>
                        <select class="select2input form-select" name="inventoryloan_penanggung_jawab" required>
                            @foreach($accounts as $account)
                            @if(old('inventory_penanggungjawab') == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                      </div>
                      <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                        <input type="date" name="inventoryloan_tglpeminjaman" class="form-control" value="{{ old('inventoryloan_tglpeminjaman') }}" id="inventoryloan_tglpeminjaman" required>
                      </div>
                      <input type="hidden" name="inventoryloan_esttglpengembalian" value="{{ old('inventoryloan_duration') }}" id="tglKembali" />
                      <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Durasi Peminjaman (Hari)</label>
                        <input type="text" name="inventoryloan_duration" value="{{ old('inventoryloan_duration') }}" class="form-control" id="duration" required>
                      </div>
                      <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Estimasi Tanggal Kembali</label>
                        <input type="text" name="inventoryloan_esttglpengembalian" class="form-control" value="" id="inventoryloan_esttglpengembalian" disabled >
                      </div>
                      <div class="col-12">
                        <label for="inputAddress" class="form-label">Keperluan Peminjaman</label>
                        <textarea type="text" name="inventoryloan_tujuan" class="form-control"  value="" id="inventoryloan_tujuan" required>{{ old('inventoryloan_tujuan') }}</textarea>
                      </div>
                      <div class="col-12">
                        <div class="row mb-3">
                            <div class="col-md-8">
                                <h1 class="h3 mb-1 inline">Daftar Barang </h1>
                            </div>
                            <div class="col-md-4 sm-12">
                                <div class="btn btn-success open_modal float-end ubah-barang">Tambah Barang</div>
                            </div>
                        </div>
                        <table class="table table-bordered yajra-datatable mt-3 ">
                            <input type="hidden" id="typeInventory" value="create" />
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NUP</th>
                                    <th>Nama Barang</th>
                                    <th>Merek</th>
                                    <th>Deskripsi Barang</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                      </div>
                      <div class="col-12 mt-3">
                        <button type="submit" class="btn btn-lg btn-primary float-end">Simpan Perubahan</button>
                      </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection



@section('custom-script')

<script type="text/javascript">
    $(function () {
        $("#duration").keyup(function(){
            var someDate = new Date($('input#inventoryloan_tglpeminjaman').val());
            var days = $('input#duration').val();
            someDate.setDate(someDate.getDate() + parseInt(days));
            $('input#tglKembali').val(someDate.getFullYear()+'-'+(someDate.getMonth()+1)+'-'+someDate.getDate());
            $('input#inventoryloan_esttglpengembalian').val(someDate.getDate()+'/'+(someDate.getMonth()+1)+'/'+someDate.getFullYear());
         });
        $("input#inventoryloan_tglpeminjaman").change(function(){
            console.log('asd');
            $('input#duration').removeAttr('disabled');
         });

    });




  </script>

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session('success') }}');
</script>
@endif
@include('backend.layouts.modalAddBarangInventoryDetail')
@endsection



