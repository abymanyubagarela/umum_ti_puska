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
               <div class="alert alert-danger col-md-12">
                  <ul>
                     @foreach ($errors->all() as $error)
                     <li>{{ $error }}</li>
                     @endforeach
                  </ul>
               </div>
               @endif
               <input type="hidden" id="roomLoanInput" value="{{ $roomLoan->id }}"/>
               <form class="row g-3" method="post" action="/backend/roomLoan/{{ $roomLoan->id }}" enctype="multipart/form-data" >
                  @method('put')
                  @csrf
                  <div class="col-md-6">
                     <label for="inputEmail4" class="form-label">Nama Peminjam</label>
                     <select class="select2input form-select" name="id_pegawai" required>
                        @foreach($accounts as $account)
                        @if(old('id_pegawai', $roomLoan->id_pegawai) == $account->id)
                        <option value="{{ $account->id }}" selected>{{ $account->account_name }}</option>
                        @else
                        <option value="{{ $account->id }}">{{ $account->account_name }}</option>
                        @endif
                        @endforeach
                     </select>
                  </div>

                  <div class="col-md-6">
                     <label for="inputEmail4" class="form-label">Nama Ruangan</label>
                     <select class="select2input form-select" name="id_ruangan" required>
                        @foreach($rooms as $room)
                        @if(old('id_ruangan', $roomLoan->id_ruangan) == $room->id)
                        <option value="{{ $room->id }}" selected>{{ $room->name }}</option>
                        @else
                        <option value="{{ $room->id }}">{{ $room->name }}</option>
                        @endif
                        @endforeach
                     </select>
                  </div>
                  <div class="col-md-6">
                     <label for="inputPassword4" class="form-label">Kegiatan</label>
                     <textarea name="kegiatan" class="form-control" value="{{ old('kegiatan',$roomLoan->kegiatan) }}" required>{{$roomLoan->kegiatan}}</textarea>
                  </div>
                  <div class="col-md-6">
                     <label for="inputPassword4" class="form-label">Detail Ruangan</label>
                     <textarea name="detail_ruangan" class="form-control" value="{{ old('detail_ruangan',$roomLoan->detail_ruangan) }}" required> {{$roomLoan->detail_ruangan}} </textarea>
                  </div>
                  <div class="col-md-6">
                     <label for="inputPassword4" class="form-label">Tanggal Peminjaman</label>
                     <input type="date" name="tanggal" class="form-control" value="{{ old('tanggal',$roomLoan->tanggal) }}" required>
                  </div>
                  <div class="col-md-6">
                     <label for="inputPassword4" class="form-label">Waktu Peminjaman</label>
                     <input type="time" name="waktu" class="form-control" value="{{ old('waktu',$roomLoan->waktu) }}" required>
                  </div>
                  <div class="col-12">
                     <div class="row mb-3">
                        <div class="col-md-8">
                           <h1 class="h3 mb-1 inline">Daftar Barang </h1>
                        </div>
                        <div class="col-md-4 sm-12">
                           <div class="btn btn-success open_modal float-end ubah-barang">Tambah Perlengkapan</div>
                        </div>
                     </div>
                     <table class="table table-bordered yajra-datatable mt-3">
                        <input type="hidden" id="typeEquipments" value="edit" />
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Perlengkapan</th>
                                <th>Jumlah</th>
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
          $.ajaxSetup({
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                  }
           })
      
        var param={roomLoanId:{{$roomLoan->id}}}
        
        getDataTable(param)
      
      $(document).on('click','.delete-product',function(event){
          event.preventDefault()

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
                  $.ajax({
                      type: "POST",
                      data: {
                          _method: "DELETE"
                      },
                      url: '/backend/roomLoanDetails/' + data_id,
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
          var table = $('.yajra-datatable').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            filter: false,
            bInfo: false,
            lengthChange: false,
            ajax: {
              url :  "/backend/roomLoanDetails/get-datatable/{{$roomLoan->id}}",
              method: 'POST',
              data: param,
            },
            columns: [{
                  data: 'DT_RowIndex',
                  name: 'DT_RowIndex'
              },
              {
                  data: 'equipments.name',
                  name: 'equipments.name'
              },
              {
                  data: 'jumlah',
                  name: 'jumlah'
              },
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }
            ],
           });
      };

    });

   </script>
   @if(session()->has('success'))
   <script type="text/javascript">
      toastr.success('{{ session('success') }}');
   </script>
   @endif
   @include('backend.roomsLoan.addEquipment')
   @endsection