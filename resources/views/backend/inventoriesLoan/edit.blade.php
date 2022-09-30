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
    <div class="col-md-4">
        <div class="text-end">
            @if($inventoriesLoan->inventoryloan_file)
                <a class="inline btn btn-success" href="{{ asset('storage'). '/' . $inventoriesLoan->inventoryloan_file }}" target="_blank" download>Download BAST</a>
            @else
            <a href="{{ 'generate-bast'}}". class="inline btn btn-secondary">Cetak Template BAST</a>
            @endif
            @if($inventoriesLoan->inventoryloan_filepengembalian)
                <a class="inline btn btn-success" href="{{ asset('storage'). '/' . $inventoriesLoan->inventoryloan_file }}" target="_blank" download>Download BAST</a>
            @else
            <a href="{{ 'generate-bap'}}". class="inline btn btn-secondary">Cetak Template BAP</a>
            @endif
            </div>
    </div>
</div>
<div class="row">
    <div class="container mt-4">
        <div class="container-form-export container-form-additional mb-4"  >
            <div class="row ">
                @if ($errors->any())
                <div class="alert alert-danger col-md-12">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                 @endif
                <input type="hidden" id="inventoriesLoanInput" value="{{ $inventoriesLoan->id }}"/>
                <form class="row g-3" method="post" action="/backend/inventoriesLoan/{{ $inventoriesLoan->id }}" enctype="multipart/form-data">
                    @method('put')
                    @csrf
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Nomor BAST</label>
                        <input type="text" name="inventoryloan_nomorBAST" id="inventoryloan_nomorBAST" value="{{ old('inventoryloan_nomorBAST',$inventoriesLoan->inventoryloan_nomorBAST) }}" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Nomor BAP</label>
                        <input type="text" name="inventoryloan_nomorBAP" id="inventoryloan_nomorBAP" value="{{ old('inventoryloan_nomorBAP',$inventoriesLoan->inventoryloan_nomorBAP) }}" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Status</label>
                        <select class="form-select" name="inventoryloan_status">
                            <option {{ old('inventoryloan_status',$inventoriesLoan->inventoryloan_status) == "Belum diproses" ? 'selected' : '' }} value="Belum diproses">Belum diproses</option>
                            <option value="Proses peminjaman" {{ old('inventoryloan_status',$inventoriesLoan->inventoryloan_status) == "Proses peminjaman" ? 'selected' : '' }}>Proses Peminjaman</option>
                            <option value="Sudah dikembalikan" {{ old('inventoryloan_status',$inventoriesLoan->inventoryloan_status) == "Sudah dikembalikan" ? 'selected' : '' }}>Sudah dikembalikan</option>

                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Jenis Transaksi</label>
                        <select class="form-select" name="inventoryloan_type">
                            <option value="Peminjaman" {{ old('inventoryloan_status',$inventoriesLoan->inventoryloan_type) == "Peminjaman" ? 'selected' : '' }}>Peminjaman</option>
                        </select>
                      </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Peminjam</label>
                        <select class="select2input form-select" name="account_id">
                            @foreach($accounts as $account)
                            @if(old('category_id', $inventoriesLoan->account_id) == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                      </div>
                      <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nama Penanggung Jawab</label>
                        <select class="select2input form-select" name="inventoryloan_penanggung_jawab" required>
                            @foreach($accounts as $account)
                            @if(old('category_id', $inventoriesLoan->inventoryloan_penanggung_jawab) == $account->id)
                            <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                            @else
                            <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                            @endif
                            @endforeach
                          </select>
                      </div>
                      <div class="col-md-4">
                        <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                        <input type="date" name="inventoryloan_tglpeminjaman" class="form-control" value="{{ old('body',$inventoriesLoan->inventoryloan_tglpeminjaman) }}" id="inventoryloan_tglpeminjaman">
                      </div>
                      <input type="hidden" name="inventoryloan_esttglpengembalian" value="{{ old('inventoryloan_esttglpengembalian',$inventoriesLoan->inventoryloan_esttglpengembalian) }}" id="tglKembali" />
                      <div class="col-md-4">
                        <label for="inputPassword4" class="form-label">Durasi Peminjaman (Hari)</label>
                        <input type="text" id="duration" name="inventoryloan_duration" value="{{ old('inventoryloan_duration',$inventoriesLoan->inventoryloan_duration) }}" class="form-control" >
                      </div>
                      <div class="col-md-4">
                        <label for="inputPassword4" class="form-label">Estimasi Tanggal Kembali</label>
                        <input type="date" name="inventoryloan_esttglpengembalian" class="form-control" value="{{ old('inventoryloan_esttglpengembalian',$inventoriesLoan->inventoryloan_esttglpengembalian) }}" id="inventoryloan_esttglpengembalian" disabled >
                      </div>
                      <div class="col-md-4">
                        <label for="inputPassword4" class="form-label">Tanggal Pengembalian</label>
                        <input type="date" name="inventoryloan_tglpengembalian" class="form-control" value="{{ old('inventoryloan_tglpengembalian',$inventoriesLoan->inventoryloan_tglpengembalian) }}" >
                      </div>
                      <div class="mb-3 col-md-4">
                        <label for="file" class="form-label">File Berita Acara Serah Terima</label>
                        <input type="hidden" name="oldBAST" value="{{ $inventoriesLoan->inventoryloan_file }}">
                        <input type="file" class="form-control @error('inventoryloan_file') is-invalid @enderror" id="inventoryloan_file" name="inventoryloan_file" onchange="">
                        @error('inventoryloan_file')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                         @enderror
                    </div>
                    <div class="mb-3 col-md-4">
                        <label for="file" class="form-label">File Berita Acara Pengembalian</label>
                        <input type="hidden" name="oldBAP" value="{{ $inventoriesLoan->inventoryloan_filepengembalian }}">
                        <input type="file" class="form-control @error('inventoryloan_filepengembalian') is-invalid @enderror" id="inventoryloan_filepengembalian" name="inventoryloan_filepengembalian" onchange="">
                        @error('inventoryloan_filepengembalian')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                         @enderror
                      </div>
                      <div class="col-12">
                        <label for="inputAddress" class="form-label">Keperluan Peminjaman</label>
                        <textarea type="text" name="inventoryloan_tujuan" class="form-control"  value="" id="inventoryloan_tujuan" >{{ old('inventoryloan_tujuan',$inventoriesLoan->inventoryloan_tujuan) }}</textarea>
                      </div>
                      <div class="col-12">
                        <div class="row mb-3">
                            <div class="col-md-8">
                                <h1 class="h3 mb-1 inline">Daftar Barang </h1>
                            </div>
                            <div class="col-md-4 sm-12">
                                <div class="btn btn-success open_modal float-end ubah-barang">Tambah Barang</div>
                            </div>
                        </div>
                        <table class="table table-bordered yajra-datatable mt-3">
                            <input type="hidden" id="typeInventory" value="edit" />
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NUP</th>
                                    <th>Nama Barang</th>
                                    <th>Merek</th>
                                    <th>Deskripsi Barang</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                      </div>
                      <div class="col-12 mt-3">
                        <button type="submit" class="btn btn-lg btn-primary float-end">Simpan Perubahan</button>
                      </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection



@section('custom-script')

<script type="text/javascript">
    $(function () {
        var param={
        inventoriesLoanId:{{$inventoriesLoan->id}}
        }
        if(!$('#inventoryloan_nomorBAP').val()){
            !$('#inventoryloan_nomorBAP').val("nomor/BAST -P.BMN/XIX.TJS/bulanAngka/tahunAngka")
        }
        if(!$('#inventoryloan_nomorBAST').val()){
            !$('#inventoryloan_nomorBAST').val("noBAST/BAST BMN/XIX.TJS/bulanAngka/tahunAngka")
        }
        $("#duration").keyup(function(){
            var days = $('input#duration').val();
            var today = new Date($('input#inventoryloan_tglpeminjaman').val());
            today.setDate(today.getDate() + parseInt(days));
            var dd = today.getDate();
            var mm = today.getMonth()+1;
            var yyyy = today.getFullYear();
            if(dd<10) {
                dd='0'+dd
            }

            if(mm<10) {
                mm='0'+mm
            }
            var created = yyyy+'-'+mm+'-'+dd;
            $('input#tglKembali').val(created);
            $('input#inventoryloan_esttglpengembalian').val(created);
         });
        $("input#inventoryloan_tglpeminjaman").change(function(){
            console.log('asd');
            $('input#duration').removeAttr('disabled');
         });

        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })

        getDataTable(param)
        $(document).on('click','.delete-product',function(){
        var data_id = $(this).attr('value');
        Swal.fire({
            title: "Apakah anda yakin akan menghapus data ini ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
          }).then((result) => {
            if (result.isConfirmed) {
                console.log(data_id);
                $.ajax({
                    type: "POST",
                    data: {
                        _method: "DELETE"
                    },
                    url: '/backend/inventoriesLoanDetails/' + data_id,
                    success: function (data) {
                        $('.dataTable').DataTable().ajax.reload();
                        toastr.info('Data Berhasil dihapus');
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });


            }
          })

    });

    function getDataTable(param={}){
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
        var table = $('.yajra-datatable').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          filter: false,
          bInfo: false,
          lengthChange: false,
          ajax: {
            url :  "/backend/inventoriesLoanDetails/get-datatable/{{$inventoriesLoan->id}}",
            method: 'POST',
            data: param,
          },
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'inventories.inventory_nup', name: 'inventory_brand'},
              {data: 'inventories.inventory_name', name: 'inventory_name'},
              {data: 'inventories.inventory_brand', name: 'inventory_brand'},
              {data: 'inventories.inventory_description', name: 'inventory_description'},
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }


          ],
          "initComplete": function(settings, data) {
               console.log(data);
            }
         });
    };

    });

  </script>

@if(session()->has('success'))
<script type="text/javascript">
     toastr.success('{{ session('success') }}');
</script>
@endif
@include('backend.layouts.modalAddBarangInventoryDetail')
@endsection



