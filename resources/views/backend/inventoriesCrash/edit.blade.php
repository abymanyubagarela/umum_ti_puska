@extends('backend.layouts.main')

@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
{{-- <input id="url" type="hidden" value="{{ \Request::url() }}"> --}}
<h1 class="h3 mb-3"><strong>Edit </strong>{{ $title }} </h1>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
<div class="row">
    <div class="container  ms-2">
        <input type="hidden" id="inventoriesCrashInput" value="{{ $inventoriesCrash->id }}"/>
        <form class="row g-3" method="post" action="/backend/inventoriesCrash/{{ $inventoriesCrash->id }}" enctype="multipart/form-data" >
            @method('put')
            @csrf
            <div class="col-md-8 col-sm-12">
            <div class="form-data">
                <hr>
                 <div class="mb-3 mt-3">
                        <label for="inputEmail4" class="form-label">Nama Pemilik</label>
                        <select class="select2input form-select" name="id_pegawai">
                            @foreach($accounts as $account)
                            @if(old('category_id', $inventoriesCrash->id_pegawai) == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                        </select>
                </div>
                <div class="mb-3 mt-3">
                        <label for="inputEmail4" class="form-label">Nama Barang</label>
                        <select class="select2input form-select" name="id_barang">
                            @foreach($inventories as $inventory)
                            @if(old('category_id', $inventoriesCrash->id_barang) == $inventory->id)
                            <option value="{{ $inventory->id }}" selected>{{ $inventory->inventory_name }}</option>
                            @else
                            <option value="{{ $inventory->id }}">{{ $inventory->inventory_name }}</option>
                            @endif
                            @endforeach
                        </select>
                </div>

                <div class="mb-3 mt-3">
                    <label for="detail_kerusakan" class="form-label">Detail Kerusakan</label>
                    <textarea type="text" class="form-control  " id="detail_kerusakan" name="detail_kerusakan" value="">{{$inventoriesCrash->detail_kerusakan}}</textarea>
                </div>

                <div class="mb-3 mt-3">
                        <label for="inputEmail4" class="form-label">Lokasi Ruangan</label>
                        <select class="select2input form-select" name="id_ruangan">
                            @foreach($rooms as $room)
                            @if(old('category_id', $inventoriesCrash->id_ruangan) == $room->id)
                            <option value="{{ $room->id }}" selected>{{ $room->name }}</option>
                            @else
                            <option value="{{ $room->id }}">{{ $room->name }}</option>
                            @endif
                            @endforeach
                        </select>
                </div>

                <div class="mb-3 mt-3">
                    <label for="detail_kerusakan" class="form-label">Detail Ruangan</label>
                    <textarea type="text" class="form-control  " id="detail_ruangan" name="detail_ruangan" value="">{{$inventoriesCrash->detail_ruangan}}</textarea>
                </div>

                <div class="mb-3 mt-3">
                        <label for="detail_foto" class="form-label">Foto</label>
                        <input type="file" class="form-control  " id="detail_foto" name="detail_foto" value="" accept="image/*">
                </div>

                 <div class="mb-3 mt-3">
                        <label for="inputEmail4" class="form-label">Status</label>
                        <select class="form-select" name="status">
                            <option value="1">Progress</option>
                            <option value="2">Selesai</option>
                        </select>
                </div>
            </div>
            <div class="form-data-place">
                <button type="submit" class="btn btn-primary float-end ms-2" name="save" value="back">Simpan {{ $title }} dan Kembali</button>
            </div>

        </form>
    </div>
</div>
@endsection

@section('custom-script')
@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session("success") }}');
</script>
@endif
<script type="text/javascript">
    $(function () {
        var getFormData = $('.form-data').html();
        $('.addData').click(function() {
            $('.form-data-place').append(getFormData);
         });

    });
  </script>


@endsection



