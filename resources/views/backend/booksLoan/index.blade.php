@extends('layouts.main')
@section('bodyClass')

<body class="inventory-management main-master">
    @endsection
    @section('container')

    @if ($status == '1')
    <input type="hidden" id="urlDataTable" value="{{ route('trxbooks.list') }}">
    @elseif ($status == '2')
    <input type="hidden" id="urlDataTable" value="{{ route('trxbookspinjam.list') }}">
    @elseif ($status == '3')
    <input type="hidden" id="urlDataTable" value="{{ route('trxbookskembali.list') }}">
    @else
    <input type="hidden" id="urlDataTable" value="{{ route('trxbooksselesai.list') }}">
    @endif


    <meta name="_token" content="{!! csrf_token() !!}" />
    <input id="url" type="hidden" value="{{ \Request::url() }}">
    <h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }}</h1>
    <div class="row">
        <div class="container mt-4">
            @if($status == 1)
            <div class="col-md-12  text-start mb-4">
                <a href="/backend/transaksi-buku/create">
                    <div class="btn btn-primary mr-3">Tambah Data </div>
                </a>
            </div>
            @endif

            <table class="table table-bordered yajra-datatable mt-3">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Peminjam</th>
                        <th>Kode Buku</th>
                        <th>Judul Buku</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Harus Kembali</th>
                        <th>Tanggal Pengembalian</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>


    @endsection



    @section('custom-script')
    <script src="{{asset('js/ajaxcrud.js')}}"></script>
    <script type="text/javascript">
        $(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
            getDataTable()

        });


        function getDataTable() {

            var table = $('.yajra-datatable').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                ajax: {
                    url: $('#urlDataTable').val(),
                    method: 'post',
                },
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'accounts.account_name',
                        name: 'accounts.account_name'
                    },
                    {
                        data: 'books.book_number',
                        name: 'books.book_number'
                    },
                    {
                        data: 'books.book_title',
                        name: 'books.book_title'
                    },
                    {
                        data: 'tanggal_peminjaman',
                        name: 'tanggal_peminjaman'
                    },
                    {
                        data: 'tanggal_harus_kembali',
                        name: 'tanggal_harus_kembali'
                    },
                    {
                        data: 'tanggal_pengembalian',
                        name: 'tanggal_pengembalian'
                    },
                    {
                        data: 'status',
                        name: 'status'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        class: 'action',
                        orderable: true,
                        searchable: true
                    }
                ],
                columnDefs: [{
                        responsivePriority: 3,
                        targets: -2
                    },
                    {
                        responsivePriority: 2,
                        targets: -1
                    }
                ],
            });


        };

        function dateFormatter(param) {
            var date = new Date(param);
            return date.toLocaleDateString();
        }

        $(document).on("click", ".update-pinjam-buku", function() {
            var id = $(this).val();
            var status = $(this).data("status");

            Swal.fire({
                title: "Apakah anda yakin akan memproses transaksi ini ?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, proceed!",
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajaxSetup({
                        headers: {
                            "X-CSRF-TOKEN": $('meta[name="_token"]').attr(
                                "content"
                            ),
                        },
                    });
                    $.ajax({
                        type: "POST",
                        url: "transaksi-buku/proceed",
                        data: {
                            id,
                            status
                        },
                        success: function(data) {
                            $(".dataTable").DataTable().ajax.reload();
                            toastr.info("Data Berhasil diproses");
                        },
                        error: function(data) {
                            toastr.info("Maaf Terjadi Kesalahan");
                        },
                    });
                }
            });
        });
    </script>

    @if(session()->has('success'))
    <script type="text/javascript">
        toastr.success('{{ session("success") }}');
    </script>
    @endif

    @endsection