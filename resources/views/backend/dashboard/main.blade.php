@extends('backend.layouts.main')

@section('container')
<meta name="_token" content="{!! csrf_token() !!}" />
<h1 class="h3 mb-3">Selamat Datang, <strong><span class="text-dark">{{ auth()->user()->account_name }}</span></strong></h1>
<div class="row">
    <div class="card col-md-5">
        <h4 class="card-header ">Tata Cara Peminjaman Barang Menggunakan Aplikasi</h4>
        <div class="card-body">
            <div class="container-iframe">
                <iframe class="responsive-iframe" src="https://www.youtube.com/embed/Nd8iScepzEc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
    </div>

    <div class="col-md-7 d-flex">
        <div class="card flex-fill">
                <h4 class="card-header mb-0">Transaksi BMN Anda</h4>
            <div class="card-body">
                <ol class="list-group list-group-numbered">
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <div class="fw-bold">Belum diproses</div>
                        Jumlah Transaksi BMN Yang Belum diproses
                      </div>
                      <span class="badge bg-primary rounded-pill" id="notProcessedYet"></span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <div class="fw-bold">Sedang dipinjam</div>
                        Jumlah Transaksi BMN Yang Sedang dipinjam
                      </div>
                      <span class="badge bg-primary rounded-pill" id="stillBorrowedBMN"></span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <div class="fw-bold">Lewat batas pengembalian</div>
                        Jumlah Transaksi BMN Yang Sedang Lewat batas pengembalian
                      </div>
                      <span class="badge bg-primary rounded-pill " id="overBorrowedBMN">14</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                      <div class="ms-2 me-auto">
                        <div class="fw-bold">Selesai diproses</div>
                        Jumlah Transaksi BMN yang telah diproses
                      </div>
                      <span class="badge bg-primary rounded-pill" id="processedBMN">14</span>
                    </li>
                  </ol>
            </div>
        </div>
    </div>
    <div class="card col-md-4">
        <h4 class="card-header ">Ingin ganti password?</h4>
        <div class="card-body">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form action="{{ route('change-user-password') }}" method="POST">
                @csrf
            <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-12 control-label">Password Lama</label>
                <input type="password" class="form-control inputData" id="oldpassword" name="oldpassword"  value="" required>
            </div>
            <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-12 control-label ">Password Baru</label>
                <input type="password" class="form-control inputData" id="newpassword" name="newpassword"  value="" required>
            </div>

            <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-12 control-label">Konfirmasi Password Baru</label>
                <input type="password" class="form-control inputData" id="newpassword_confirmation" name="newpassword_confirmation"  value="" required>
             <span id="messages-password"></span>
            </div>
             <br>
             <button type="submit" class="btn btn-primary float-end" id="btn-save-password" value="submit">Save Changes</button>
            </form>
        </div>
    </div>
</div>


@endsection
@section('custom-script')
<script type="text/javascript">

    $('#newpassword, #newpassword_confirmation').on('keyup', function () {
        if ($('#newpassword').val() == $('#newpassword_confirmation').val()) {
          $('#messages-password').html('Konfirmasi Password Baru Sesuai').css('color', 'green');
        } else
          $('#messages-password').html('Konfirmasi Password  Baru Belum Sesuai').css('color', 'red');
        }
    );


    $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        })
    $(function () {
        $.ajax({
            type: "GET",
            url: 'getDataInventoryLoanDashboard/',
            success: function (data) {
                console.log(data);
               $('#notProcessedYet').html(countData('Belum diproses',data))
               $('#stillBorrowedBMN').html(checkExpired('Proses peminjaman',data,false))
               $('#processedBMN').html(countData('Sudah dikembalikan',data))
               $('#overBorrowedBMN').html(checkExpired('Proses peminjaman',data,true))
            },
            error: function (data) {
                console.log('Error:', data);
            }
        });

    });

    function countData(tag,datas){
        var productArray = datas.filter(function(product) {
            return product.inventoryloan_status == tag;
        });
        return productArray.length;
    }
    function checkExpired(tag,datas,expired){
        var q = new Date();
        var m = q.getMonth()+1;
        var d = q.getDay();
        var y = q.getFullYear();
        var dateNow = new Date(y,m,d);
        var arrayStatus = datas.filter(function(product) {
            return product.inventoryloan_status == tag;
        });
        var productArray = arrayStatus.filter(function(product) {
            datePengembalian = new Date(product.inventoryloan_esttglpengembalian)
            if(!expired){
                return datePengembalian > dateNow
            }
            return datePengembalian < dateNow ;
        });
        return productArray.length;
    }


</script>
@if(session()->has('success'))
    <script type="text/javascript">
        toastr.success('{{ session('success') }}');
    </script>
@endif
@endsection
