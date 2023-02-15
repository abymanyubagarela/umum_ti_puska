@extends('layouts.main')
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
            <h4 for="inputDetail" class="col-sm-3 control-label">Pengembalian Buku</h4>
        <div class="form-group mb-3 col-md-12">
            <form action="{{ route('exportReportIndexBookKembali.export') }}" method="POST" class="row" enctype="multipart/form-data">
                @csrf
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Dari Tanggal</label>
                <input type="date" class="form-control inputData" id="dariTanggal" name="dateFrom">
            </div>
            <div class="col-md-5 sm-12">
                <label for="inputDetail" class="col-sm-3 control-label">Sampai Tanggal</label>
                <input type="date" class="form-control inputData" id="sampaiTanggal" name="dateNext">
            </div>
            <div class="col-md-2 sm-12 align-self-end">
                <input type="hidden" name="status" value="3">
                <button type="submit" class="btn btn-success w-100 ">Download</button>
            </div>
            </form>
        </div>
    </div>
</div>
@endsection



@section('custom-script')


@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session('success') }}');
</script>
@endif

@endsection



