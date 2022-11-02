@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management main-master">
@endsection
@section('container')
<input type="hidden" id="urlDataTable" value="{{ route('inventoriesCrash.list') }}">
<meta name="_token" content="{!! csrf_token() !!}" />
<input id="url" type="hidden" value="{{ \Request::url() }}">
<h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }}</h1>
<div class="row">
    <div class="container mt-4">
        <div class="col-md-12  text-start mb-4">
            <a href="/backend/inventoriesCrash/create"><div class="btn btn-primary mr-3">Tambah Data </div></a>
        </div>
        
        <table class="table table-bordered yajra-datatable mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Pengguna</th>
                    <th>Nama Barang</th>
                    <th>Lokasi Ruangan</th>
                    <th>Kerusakan</th>
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
            url:  $('#urlDataTable').val(),
            method: 'post',
          },
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'id_pegawai', name: 'id_pegawai'},
              {data: 'id_barang', name: 'id_barang'},
              {data: 'id_ruangan', name: 'id_ruangan'},
              {data: 'detail_kerusakan', name: 'detail_kerusakan'},
              {data: 'status', name: 'status'},
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }
          ],
          columnDefs: [
                { responsivePriority: 3, targets: -2 },
                { responsivePriority: 2, targets: -1 }
            ]
         });
    };

    function dateFormatter(param){
        var date = new Date(param);
        return date.toLocaleDateString();
    }


  </script>

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session("success") }}');
</script>
@endif

@endsection



