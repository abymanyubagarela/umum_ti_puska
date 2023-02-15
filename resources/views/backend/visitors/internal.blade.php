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
                    <th>Keperluan</th>
                    <th>Rating</th>
                    
                </tr>
            </thead>
            <tbody>
            @foreach ($visitors as $v)
            <tr>
                <td>{{ $loop->index+1 }} </td>
                <td>{{ date_format($v->created_at,"Y/m/d") }} </td>
                <td>{{ $v->account_name }} </td>
                <td>{!! $v->alasan !!} </td>
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
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
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



