@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management main-master">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
<input id="url" type="hidden" value="{{ \Request::url() }}">
<h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }}</h1>
<div class="row">
    <div class="container mt-4">
        <div class="col-md-12  text-start mb-4">
            <a href="/pinjam-bmn/create"><div class="btn btn-primary mr-3">Pinjam BMN </div></a>
        </div>
        <table class="table table-bordered yajra-datatable mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Tujuan Peminjaman</th>
                    <th>Tanggal Peminjaman</th>
                    <th>Tanggal Harus Kembali</th>
                    <th>Status</th>
                    <th>File</th>
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
        getDataTable()


    });


    function getDataTable(){
        var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          ajax: "{{ route('UserInventoriesLoan.list') }}",
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'inventoryloan_tujuan', name: 'inventoryloan_tujuan'},
              {data: 'inventoryloan_tglpeminjaman', name: 'inventoryloan_tglpeminjaman'},
              {data: 'inventoryloan_esttglpengembalian', name: 'inventoryloan_esttglpengembalian'},
              {data: 'inventoryloan_status', name: 'inventoryloan_status'},
              {data: 'isBast', name: 'isBast'},
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
     toastr.success('{{ session('success') }}');
</script>
@endif

@endsection



