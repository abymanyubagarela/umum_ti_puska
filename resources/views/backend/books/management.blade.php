@extends('layouts.main')
@section('bodyClass')
<body>
    @endsection
    @section('container')

    <meta name="_token" content="{!! csrf_token() !!}" />
    <input id="url" type="hidden" value="{{ \Request::url() }}">

    <div class="col-md-12  text-start mb-4">
    <div class="row">
        <div class="col-md-4  text-start mb-4">
            <a href="/backend/books/create">
                <div class="btn btn-primary mr-3">Tambah Data </div>
            </a>
        </div>
        <div class="col-md-8  text-start mb-4">
            <form method="post" action="/backend/books/export">
                @csrf
                <select style="width:60%;display:inline-block;" class="select2input form-select" name="export" id="exportbook">
                        <option value="BMN"> BMN </option>
                        <option value="Bukan BMN">Bukan BMN </option>
                        <option value="Semua">Semua</option>
                    </select>

                    <Button type="submit" class="btn btn-primary mr-3">Export Koleksi Buku </Button>

            </form>
        </div>
    </div>



    </div>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title"><strong>Daftar</strong> {{ $title }}</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover mb-0 yajra-datatable">
                        <thead>
                            <tr>
                                <th>Nomor Buku</th>
                                <th>Judul Buku</th>
                                <th>Penulis</th>
                                <th>Kelas Buku</th>
                                <th>Subjek Kelas</th>
                                <th>Jenis Buku</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="urlDataTable" value="{{ route('books.list') }}">

    @include('layouts.crudModal')


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
                dom: 'lfrti<"bottom-wrapper"p>',
                ajax: {
                    url: $('#urlDataTable').val(),
                    method: "POST"
                },
                columns: [
                    {
                        data: 'book_number',
                        name: 'book_number'
                    },
                    {
                        data: 'book_title',
                        name: 'book_title'
                    },
                    {
                        data: 'book_author',
                        name: 'book_author'
                    },
                    {
                        data: 'book_class',
                        name: 'book_class'
                    },
                    {
                        data: 'book_subject',
                        name: 'book_subject'
                    },
                    {
                        data: 'isBMN',
                        name: 'isBMN'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        class: 'action',
                        orderable: true,
                        searchable: true
                    }
                ]
            });
        };
    </script>

    @if(session()->has('success'))
    <script type="text/javascript">
        toastr.success('{{ session("success") }}');
    </script>
    @endif

    @endsection
