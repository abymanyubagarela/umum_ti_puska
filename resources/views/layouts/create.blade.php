@extends('layouts.main')

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
    <div class="col-sm-12">
        <div class="card comman-shadow">
            <div class="card-body">
                <form method="post" action="/backend/{{ Request::segment(2) }}/" class="mb-5" enctype="multipart/form-data" novalidate>
                    @csrf
                    <div class="row">
                        <div class="col-12">
                            <h5 class="form-title student-info">{{ $title }}</h5>
                        </div>
                        @foreach($dataCreate as $data)
                        <div class="col-12 col-sm-4">
                            <div class="form-group local-forms">
                                <label for="{{ $data['name'] }}" class="form-label">{{ $data['label'] }} @if($data['required']) <span class="login-danger">*</span> @endif </label>
                                @if($data["type"] == 'input')
                                <input type="text" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @elseif($data["type"] == 'number')
                                <input type="number" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @elseif($data["type"] == 'email')
                                <input type="email" class="form-control @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}>
                                @elseif($data["type"] == 'textarea')
                                <textarea type="text" class="form-control @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></textarea>
                                @elseif($data["type"] == 'select')
                                <select class="form-select inputData @error($data['name']) is-invalid @enderror" aria-label="Default select example" id="{{ $data['name'] }}" name="{{ $data['name'] }}" {{ $data['required'] ? 'required' : ' ' }}>
                                    @foreach($data["children"] as $selectValue)
                                    <option value="{{ $selectValue['id'] }}">{{ $selectValue['label'] }}</option>
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
                        </div>
                        @endforeach
                        <div class="col-12">
                            <div class="student-submit">
                                <button type="submit" class="btn btn-primary float-end ms-2" name="save" value="back">Simpan</button>
                            </div>
                        </div>
                    </div>
                </form>
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
    $(function() {
        var getFormData = $('.form-data').html();
        $('.addData').click(function() {
            $('.form-data-place').append(getFormData);
        });

    });
</script>
@endsection