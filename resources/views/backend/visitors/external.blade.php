@extends('layouts.main')
@section('bodyClass')
<body class="inventory-management main-master">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
<input id="url" type="hidden" value="{{ \Request::url() }}">
<h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }} </h1>
<div class="row">
    <div class="container mt-4">
        <table class="table table-bordered yajra-datatable mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Tanggal Kunjungan</th>
                    
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Whatsapp</th>
                    <th>Instansi</th>
                    <th>Nama Instansi</th>
                    <th>Keperluan</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($visitors as $v)
            <tr>
                <td>{{ $loop->index+1 }} </td>
                <td>{{ $v->name }} </td>
                <td>{{ date_format($v->created_at,"Y/m/d") }} </td>
                <td>{{ empty($v->email) ? '-' : $v->email }} </td>
                <td>{{ empty($v->phone) ? '-' : $v->phone }} </td>
                <td>{{ $instansi[$v->instansi_id-1]['name'] }} </td>
                <td>{{ $v->instansi }} </td>
                <td>{{ $alasan_out[$v->reason_id-1]['name'] }} </td>
                <td>{{ $v->rate == '1' ? 'Memuaskan' : 'Tidak Memuaskan' }} </td>
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</div>


@endsection

@section('custom-script')
<script src="{{asset('js/ajaxcrud.js')}}"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>

<script type="text/javascript">
    $(function () {
        getDataTable()
    });


    function getDataTable(){
        
        $('.yajra-datatable').DataTable( {
            dom: 'Bfrtip',
            buttons: [
                { extend: 'excel', className: 'btn btn-success', text: 'Report' }           
            ]
        } );
    };


  </script>

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session("success") }}');
</script>
@endif

@endsection



