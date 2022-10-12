@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management edit">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />

<div class="row">
    <div class="col-md-12">
        <h1 class="h3 mb-1 inline"><strong>Export</strong> Report</h1>
    </div>
</div>
<div class="row mt-3">
    <div class="card p-2">
            @if($errors->any())
                <div class="alert alert-danger">{{$errors->first()}}</div>
            @endif
            <h4 for="inputDetail" class="col-sm-3 control-label">Peminjaman mulai tanggal</h4>
        <div class="form-group mb-3 col-md-12">
            <form action="{{ route('exportInventoriesLoan') }}" method="POST" class="row" enctype="multipart/form-data">
                @csrf
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Dari Tanggal</label>
                <input type="date" class="form-control inputData" id="dariTanggal" name="dateFrom" placeholder="nup" value="">
            </div>
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Sampai Tanggal</label>
                <input type="date" class="form-control inputData" id="sampaiTanggal" name="dateNext" placeholder="nup" value="">
            </div>
            <div class="col-md-2 sm-12 align-self-end">
                <button type="submit" class="btn btn-success w-100 ">Export To Excel</button>
            </div>
            </form>
        </div>
        <h4 for="inputDetail" class="col-sm-3 control-label">Download File BAST dan BAP</h4>
        <div class="form-group mb-3 col-md-12">
            <form action="{{ route('exportInventoriesLoanFile') }}" method="POST" class="row" enctype="multipart/form-data">
                @csrf
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Dari Tanggal</label>
                <input type="date" class="form-control inputData" id="dariTanggal" name="dateFrom" placeholder="nup" value="">
            </div>
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Sampai Tanggal</label>
                <input type="date" class="form-control inputData" id="sampaiTanggal" name="dateNext" placeholder="nup" value="">
            </div>
            <div class="col-md-2 sm-12 align-self-end">
                <button type="submit" class="btn btn-success w-100">Download ZIP</button>
            </div>
            </form>
        </div>
    </div>


</div>




@endsection



@section('custom-script')

<script type="text/javascript">
    $(function () {
        $('#dariTanggal').change(function(){
            $('#sampaiTanggal').attr('min',$('#dariTanggal').val() )
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



