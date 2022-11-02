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
                        @elseif($data["type"] == 'email')
                        <input type="email" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }}>
                        @elseif($data["type"] == 'textarea')
                        <textarea type="text" class="form-control @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></textarea>
                        @elseif($data["type"] == 'select' && $data['name'] == 'id_barang')
                            <select class="form-select inputData select2input @error($data['name']) is-invalid @enderror" aria-label="Default select example" id="{{ $data['name'] }}" name="{{ $data['name'] }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @foreach($data["children"] as $selectValue)
                                    <option value="{{ $selectValue['id'] }}">{{ $selectValue['inventory_name'] }} - {{ $selectValue['inventory_nup'] }}</option>
                                @endforeach
                            </select>
                        @elseif($data["type"] == 'select' && $data['name'] == 'id_ruangan')
                            <select class="form-select inputData select2input @error($data['name']) is-invalid @enderror" aria-label="Default select example" id="{{ $data['name'] }}" name="{{ $data['name'] }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @foreach($data["children"] as $selectValue)
                                    <option value="{{ $selectValue['id'] }}">{{ $selectValue['name'] }}</option>
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
            </div>

            {{-- <div class="btn btn-secondary float-end addData">Tambah {{ $title }} Lagi</div> --}}
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



