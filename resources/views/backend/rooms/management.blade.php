@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management main-master">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
<input id="url" type="hidden" value="{{ \Request::url() }}">
<h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }} </h1>
<div class="row">
    <div class="container mt-4">
        <div class="col-md-12  text-start mb-4">
            <a href="/backend/rooms/create"><div class="btn btn-primary mr-3">Tambah Data </div></a>
            <!-- <div class="btn btn-export btn-secondary mr-3">Export Data</div>
            <div class="btn btn-import btn-success mr-3">Import Data</div> -->
        </div>
        <div class="container-form-import container-form-additional mb-4" style="display: none">
            <form action="{{ route('import-inventories') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 control-label">Pilih File</label><br>
                    <input type="file" name="file" class="custom-file-input" id="customFile">
                    {{-- <label class="custom-file-label" for="customFile">Choose file</label> --}}

                </div>
                <button class="btn btn-primary">Import {{ $title }}</button>
            </form>
        </div>
        <div class="container-form-export container-form-additional mb-4"  style="display: none">
            <form action="{{ route('export-inventories') }}" method="POST" enctype="multipart/form-data">
                @csrf
                {{-- <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 control-label">NUP</label>
                    <input type="text" class="form-control inputData" id="inventory_nup" name="inventory_nup" placeholder="nup" value="">
                </div> --}}
                <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 mb-2 control-label">Kondisi</label>
                      <select class="form-select inputData" aria-label="Default select example" id="inventory_condition" name="inventory_condition">
                        <option value="all">Semua</option>
                        <option value="baik">Baik</option>
                        <option value="rusak">Rusak</option>
                      </select>
                  </div>
                <button class="btn btn-primary">Export {{ $title }}</button>
            </form>
        </div>

        <table class="table table-bordered yajra-datatable mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Barang</th>
                    <th>Keterangan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>
<input type="hidden" id="urlDataTable" value="{{ route('rooms.list') }}">

@include('backend.layouts.crudModal')


@endsection

@section('custom-script')
<script src="{{asset('js/ajaxcrud.js')}}"></script>
<script type="text/javascript">
    $(function () {
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
        getDataTable()

    });


    function getDataTable(){
        var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          ajax: {
            url : $('#urlDataTable').val(),
            method: "POST"
          },
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'name', name: 'name'},
              {data: 'detail_ruangan', name: 'detail_ruangan'},
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



