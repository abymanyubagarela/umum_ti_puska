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
        <table class="table table-bordered mt-3">
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
<input type="hidden" id="urlDataTable" value="{{ route('visitors.list') }}">

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



