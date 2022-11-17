@extends('backend.layouts.main')

@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
{{-- <input id="url" type="hidden" value="{{ \Request::url() }}"> --}}
<h1 class="h3 mb-3"><strong>Tambah </strong>{{ $title }} </h1>
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
        <form method="post" action="/backend/{{ Request::segment(2) }}/" class="mb-5" enctype="multipart/form-data" novalidate>
            @csrf
            <div class="col-md-8 col-sm-12">
            <div class="form-data">
                <hr>
                @foreach($dataCreate as $data)
                        <div class="mb-3 mt-3">
                        <label for="{{ $data['name'] }}" class="form-label">{{ $data['label'] }}</label>
                        @if($data["type"] == 'input')
                        <input type="text" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }}>
                        @elseif($data["type"] == 'number')
                        <input type="number" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }} min="{{ old($data['min'], 0) }}">
                        @elseif($data["type"] == 'email')
                        <input type="email" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}>
                        @elseif($data["type"] == 'textarea')
                        <textarea type="text" class="form-control @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></textarea>
                        @elseif($data["type"] == 'select')
                            <select class="form-select inputData @error($data['name']) is-invalid @enderror" aria-label="Default select example" id="{{ $data['name'] }}" name="{{ $data['name'] }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @foreach($data["children"] as $selectValue)
                                    <option value="{{ $selectValue->id }}">{{ $selectValue->label }}</option>
                                @endforeach
                            </select>
                        @elseif($data["type"] == 'file')
                        <input type="file" class="form-control @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></input>
                        @elseif($data["type"] == 'date')
                        <input type="date" class="form-control @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></input>
                        @endif
                        @error($data['name'])
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        </div>
                @endforeach
            </div>
            <div class="form-data-place">
                <button type="submit" class="btn btn-primary float-end ms-2" name="save" value="back">Simpan {{ $title }} dan Kembali</button>
                <button type="submit" class="btn btn-secondary float-end ms-2" name="more" value="more">Simpan {{ $title }} dan Input Lagi</button>
            </div>

            {{-- <div class="btn btn-secondary float-end addData">Tambah {{ $title }} Lagi</div> --}}
        </form>
    </div>
</div>



     <div class="modal modal-lg fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Data BMN</h4>
                <div class="btn-group" role="group" aria-label="Third group">
                    <button type="button" class="close btn" data-bs-dismiss="modal">X</button>
                </div>
            </div>
            <div class="modal-body">
                <form id="frmProducts" name="frmProducts" class="form-horizontal" novalidat Qe="">
                    <div class="form-group error mb-3">
                      <label for="inputName" class="col-sm-3 control-label">Nama BMN</label>
                      <input type="text" class="form-control has-error inputData" id="inventory_name" name="inventory_name" placeholder="Nama BMN" value="">
                    </div>
                    <div class="form-group mb-3">
                      <label for="inputDetail" class="col-sm-3 control-label">NUP</label>
                      <input type="text" class="form-control inputData" id="inventory_nup" name="inventory_nup" placeholder="nup" value="">
                    </div>
                    <div class="form-group mb-3">
                        <label for="inputDetail" class="col-sm-3 control-label">Deskripsi</label>
                        <textarea type="text" class="form-control inputData" id="inventory_description" name="inventory_description" placeholder="deskripsi" value=""></textarea>
                      </div>
                      <div class="form-group mb-3">
                        <label for="inputDetail" class="col-sm-3 control-label">Kondisi</label>
                          <select class="form-select inputData" aria-label="Default select example" id="inventory_condition" name="inventory_condition">
                            <option value="baik">Baik</option>
                            <option value="rusak">Rusak</option>
                          </select>
                      </div>
                  </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" id="btn-save" value="update">Save Changes</button>
              <input type="hidden" id="product_id" name="product_id" value="0">
            </div>
          </div>
        </div>
      </div>
  <!-- END MODAL -->


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



