@extends('layouts.main')
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
        <div class="container mt-2">

            <div class="container-form-export container-form-additional mb-2">
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
                    <div class="alert alert-warning" role="alert">
                        Maksimal peminjaman buku satu pegawai adalah 3 buku
                    </div>
                    <form class="row g-3" method="post" action="/backend/transaksi-buku/" enctype="multipart/form-data" id="form">
                        @method('post')
                        @csrf
                        <?php if (auth()->user()->account_role == "Super Admin") { ?>
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
                        <?php } else { ?>
                            <input type="hidden" name="id_pegawai" value="{{auth()->user()->id}}">
                        <?php } ?>

                        <div class="col-md-12">
                            <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                            <input type="date" name="tanggal" class="form-control" value="{{ old('tanggal_peminjaman') }}" required>
                        </div>


                        <div class="col-12">
                            <div class="row mb-3">
                                <div class="col-md-8">
                                    <h5 class="mt-3 mb-1 inline">Daftar Buku </h5>
                                </div>
                                <div class="col-md-4 sm-12">
                                    <div class="btn btn-success open_modal float-end ubah-barang">Tambah Buku</div>
                                </div>
                            </div>
                            <table class="table table-bordered yajra-datatable mt-3 ">
                                <input type="hidden" id="type" value="create" />
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kode Buku</th>
                                        <th>Judul Buku</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                        <div class="col-12 mt-3">
                            <button type="submit" class="btn btn-md btn-success float-end">Simpan</button>
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

    @if(session()->has('error'))
    <script type="text/javascript">
        toastr.error('{{ session("error") }}');
    </script>
    @endif

    @include('backend.booksLoan.addBook')

    <script type="text/javascript">
        // digunakan untuk simpan buku sementara
        var dataRowAdd = [];
        $("form").submit(function(e) {
            e.preventDefault();
            console.log(dataRowAdd.length);
            if (dataRowAdd.length < 1) {
                toastr.error('Anda belum memilih buku. Transaksi tidak dapat dilanjutkan');
            } else {
                e.currentTarget.submit();
            }
        });
    </script>

    @endsection