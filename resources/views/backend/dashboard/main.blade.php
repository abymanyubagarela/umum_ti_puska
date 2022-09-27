@extends('backend.layouts.main')

@section('container')
<h1 class="h3 mb-3">Selamat Datang, <strong><span class="text-dark">{{ auth()->user()->account_name }}</span></strong></h1>
<div class="row">
    <div class="card col-md-6">
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
                <label for="inputDetail" class="col-sm-3 control-label">Password Lama</label>
                <input type="password" class="form-control inputData" id="oldpassword" name="oldpassword" placeholder="Masukkan Password" value="" required>
            </div>
            <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-3 control-label ">Password Baru</label>
                <input type="password" class="form-control inputData" id="newpassword" name="newpassword" placeholder="Masukkan Password Baru" value="" required>
            </div>

            <div class="form-group mb-3">
                <label for="inputDetail" class="col-sm-12 control-label">Konfirmasi Password Baru</label>
                <input type="password" class="form-control inputData" id="newpassword_confirmation" name="newpassword_confirmation" placeholder="Konfirmasi Password Baru" value="" required>
             <span id="messages-password"></span>
             <br>
             <button type="submit" class="btn btn-success float-end" id="btn-save-password" value="submit">Save Changes</button>
            </form>
        </div>
      </div>
</div>
@endsection

@section('custom-script')
<script type="text/javascript">

    $('#newpassword, #newpassword_confirmation').on('keyup', function () {
        if ($('#newpassword').val() == $('#newpassword_confirmation').val()) {
          $('#messages-password').html('Password Baru Sama').css('color', 'green');
        } else
          $('#messages-password').html('Password Baru Belum Sama').css('color', 'red');
        }
    );

</script>
@if(session()->has('success'))
    <script type="text/javascript">
        toastr.success('{{ session('success') }}');
    </script>
@endif
@endsection

