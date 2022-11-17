@extends('backend.layouts.main')
@section('bodyClass')
<body class="inventory-management edit">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />

<div class="row">
    <div class="col-md-8">
        <h1 class="h3 mb-1 inline"><strong>Daftar</strong> {{ $title }}</h1>
    </div>
</div>
<div class="row">
    <div class="container mt-4">
        <div class="container-form-export container-form-additional mb-4"  >
            <div class="row ">
                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                 @endif
                <form class="row g-3" method="post" action="/backend/vehicleLoan/" enctype="multipart/form-data" >
                    @method('post')
                    @csrf
                    <div class="col-md-4">
                        <label for="inputEmail4" class="form-label">Nama Peminjam</label>
                        <select class="select2input form-select" name="account_id" required>
                            @foreach($accounts as $account)
                            @if(old('account_id') == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                    </div>
                    <div class="col-md-4">
                        <label for="inputEmail4" class="form-label">Nama Driver</label>
                        <select class="select2input form-select" name="driver_id" required>
                            @foreach($drivers as $driver)
                            @if(old('driver_id') == $driver->id)
                            <option value="{{ $driver->id }}" selected>{{ $driver->name }}</option>
                            @else
                            <option value="{{ $driver->id }}">{{ $driver->name }}</option>
                            @endif
                            @endforeach
                          </select>
                    </div>
                    <div class="col-md-4">
                        <label for="inputEmail4" class="form-label">Mobil</label>
                        <select class="select2input form-select" name="vehicle_id" required>
                            @foreach($vehicles as $vehicle)
                            @if(old('vehicle_id') == $vehicle->id)
                            <option value="{{ $vehicle->id }}" selected>{{ $vehicle->nomor }} - {{ $vehicle->name }}</option>
                            @else
                            <option value="{{ $vehicle->id }}">{{ $vehicle->nomor }} - {{ $vehicle->name }}</option>
                            @endif
                            @endforeach
                        </select>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                        <input type="date" name="tanggal" class="form-control" value="{{ old('tanggal') }}" required>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Waktu Peminjaman</label>
                        <input type="time" name="waktu" class="form-control" value="{{ old('waktu') }}" required>
                    </div>

                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Tujuan</label>
                        <textarea name="tujuan" class="form-control" value="{{ old('tujuan') }}" required></textarea>
                    </div>
                   
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Keperluan</label>
                        <textarea name="keperluan" class="form-control" value="{{ old('keperluan') }}" required></textarea>
                    </div>

                    <div class="col-12 mt-3">
                        <button type="submit" class="btn btn-lg btn-primary float-end">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection

@section('custom-script')

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session("success") }}');
</script>
@endif
@endsection



