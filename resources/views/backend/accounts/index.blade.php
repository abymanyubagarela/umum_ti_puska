@extends('layouts.main')
@section('bodyClass')
<body class="inventory-management-index main-master">
@endsection
@section('container')

<meta name="_token" content="{!! csrf_token() !!}" />
<input id="url" type="hidden" value="{{ \Request::url() }}">
<h1 class="h3 mb-1"><strong>Daftar</strong> {{ $title }}</h1>
<div class="row">
    <div class="container mt-4">
        <div class="row">
        <div class="col-md-8 col-sm-12 text-start mb-4">
            <a href="/backend/accounts/create"><div class="btn btn-primary mr-3">Tambah Data </div></a>
            <!-- <div class="btn btn-export btn-secondary mr-3">Export Data</div>
            <div class="btn btn-import btn-success mr-3">Import Data</div> -->
        </div>
        <!-- <div class="col-md-4 col-sm-12  text-start mb-4">
            <div class="btn btn-password btn-danger mr-3 float-end">Change Password</div>
        </div> -->
    </div>
        <div class="container-form-import container-form-additional mb-4" style="display: none">
            <form action="{{ route('import-accounts') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 control-label">Pilih File</label><br>
                    <input type="file" name="file" class="custom-file-input" id="customFile">
                    {{-- <label class="custom-file-label" for="customFile">Choose file</label> --}}

                </div>
                <button class="btn btn-primary">Import {{ $title }}</button>
            </form>
        </div>
        <div class="container-form-export container-form-additional mb-4"  style="display: none">
            <form action="{{ route('export-accounts') }}" method="POST" enctype="multipart/form-data">
                @csrf
                {{-- <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 control-label">NUP</label>
                    <input type="text" class="form-control inputData" id="inventory_nup" name="inventory_nup" placeholder="nup" value="">
                </div> --}}
                {{-- <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 mb-2 control-label">Kondisi</label>
                      <select class="form-select inputData" aria-label="Default select example" id="inventory_condition" name="inventory_condition">
                        <option value="all">Semua</option>
                        <option value="baik">Baik</option>
                        <option value="rusak">Rusak</option>
                      </select>
                  </div> --}}
                <button class="btn btn-primary">Export {{ $title }}</button>
            </form>
        </div>

        <table class="table table-bordered yajra-datatable mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>NIP BPK</th>
                    <th>NIP BKN</th>
                    <th >Email</th>
                    <th>Unit Kerja</th>
                    <th>Role</th>
                    <th style="max-width: 70px;overflow-wrap: break-word;">Aksi</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>

@include('backend.layouts.crudModal')


<div class="modal modal-lg fade" id="myModals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Ganti Password </h4>
            <div class="btn-group" role="group" aria-label="Third group">
                <button type="button" class="close btn" data-bs-dismiss="modal">X</button>
            </div>
        </div>
        <div class="modal-body">
                <div class="form-group mb-3">
                    <label style="width:100%" for="inputDetail" class="col-sm-3 mb-2 form-label">Pilih Akun</label>
                    <select class="select2inputModals password-input form-control" name="account_id">

                    </select>
                </div>
                <div class="form-group mb-3">
                    <label for="inputDetail" class="col-sm-3 control-label">Password Baru</label>
                    <input type="password" class="form-control inputData" id="password" name="password" placeholder="Masukkan Password" value="">
                </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" id="btn-save-password" value="update">Save Changes</button>
          <input type="hidden" id="product_id" name="product_id" value="0">
        </div>
      </div>
    </div>
</div>
<input type="hidden" id="urlDataTable" value="{{ route('account.list') }}">
@endsection

@section('custom-script')
<script src="{{asset('js/ajaxcrud.js')}}"></script>
<script type="text/javascript">

    $(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        })
        getDataTable()
        $('.select2inputModals').select2({
            dropdownParent: $('#myModals')
        });
    });

    $(document).on('click','.btn-password',function(){
        var product_id = $(this).val();

        // Populate Data in Edit Modal Form
        if(!$('.ajax-account').length){
            $.ajax({
            type: "GET",
            url: url + '/' ,
            success: function (data) {
                var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html += '<option class="ajax-account" value="'+data[i].id+'">'+data[i].account_name+'</option>';
                    }
                $('.password-input').html(html);
                $('#myModals').modal('show');

            },
            error: function (data) {
                console.log('Error:', data);
                }
            });
        } else {
            $('#myModals').modal('show');
        }

    });

    $(document).on('click','#btn-save-password',function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        })
        var formData = {
                password: $('input#password').val()
            }
        var product_id = $('.password-input').val();;
        $.ajax({
            type: "POST",
            url: $('#url').val() + '/passwordUpdate/' + product_id,
            data: formData,
            dataType: 'json',
            success: function (data) {
                $('#myModals').modal('hide')
                $('.dataTable').DataTable().ajax.reload();
                toastr.success('Data berhasil diubah');
            },
            error: function (reject) {
                console.log(reject);
            }
        });
        });
    function getDataTable(){
        var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          ajax: {
            url: $('#urlDataTable').val(),
            method: 'POST'
          },
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'account_name', name: 'account_name'},
              {data: 'account_nip_bpk', name: 'account_nip_bpk'},
              {data: 'account_nip_bkn', name: 'account_nip_bkn'},
              {data: 'account_email', name: 'account_email'},
              {data: 'account_unit', name: 'account_unit'},
              {data: 'account_role', name: 'account_role'},
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }
          ]
         });
    };


  </script>

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session('success') }}');
</script>
@endif

@endsection



