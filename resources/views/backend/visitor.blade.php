<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Inventory - Dashboard</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="/assets/plugins/feather/feather.css">

    <link rel="stylesheet" href="/assets/plugins/icons/flags/flags.css">

    <link rel="stylesheet" href="/assets/plugins/fontawesome/css/fontawesome.min.css">

    <link rel="stylesheet" href="/assets/plugins/fontawesome/css/all.min.css">

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />

    <link rel="stylesheet" href="/assets/css/style.css">
</head>

<body>

    <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <div class="loginbox">
                    <div class="login-left">
                        <img class="img-fluid" src="/assets/img/login.png" alt="Logo">
                    </div>
                    <div class="login-right">
                        <div class="login-right-wrap">
                            <h1>Welcome to Puska</h1>

                            <div class="tab-section mt-4">
                                <ul class="nav nav-tabs nav-bordered nav-justified">
                                    <li class="nav-item active">
                                        <a href="#home-b2" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
                                            Pegawai
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#profile-b2" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
                                            Pengunjung
                                        </a>
                                    </li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home-b2">
                                        <form method="POST" action="/buku-tamu/in" id="tm_internal">
                                            @csrf
                                            <label>Nama Pegawai <span class="login-danger">*</span></label>
                                            <div class="form-group">
                                                <select class="select2input form-select" name="account_id" required>
                                                    @foreach($accounts as $account)
                                                    <option value="{{ $account['id'] }}">{{ $account['account_name'] }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <label>Alasan Kunjungan <span class="login-danger">*</span></label>
                                            <div class="form-group">
                                                <select class="select2input form-select" name="reason_id[]" required multiple="multiple" required>
                                                    @foreach($alasan_in as $ai)
                                                    <option value="{{ $ai['id'] }}">{{ $ai['name'] }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <label>Layanan <span class="login-danger">*</span></label>
                                            <div class="form-group">
                                                <select class="form-control" name="rate" required>
                                                    <option value="1">Memuaskan</option>
                                                    <option value="2">Tidak Memuaskan</option>
                                                </select>
                                            </div>
                                            <div class="form-group mt-2">
                                                <input type="hidden" value="in" name="type">
                                                <button class="btn btn-primary btn-block" type="submit">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="profile-b2">
                                        <form method="POST" action="/buku-tamu/in" id="tm_external">
                                            @csrf
                                            <div class="form-group">
                                                <label>Nama Lengkap <span class="login-danger">*</span></label>
                                                <input class="form-control" type="text" name="name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Email <span class="login-danger">*</span></label>
                                                <input class="form-control" type="text" name="email" required>
                                            </div>
                                            <div class="form-group">
                                                <label>No Whatsapp <span class="login-danger">*</span></label>
                                                <input class="form-control" type="text" name="phone" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Instansi <span class="login-danger">*</span></label>
                                                <select class="form-control" name="instansi_id">
                                                    @foreach($instansi as $ai)
                                                    <option value="{{ $ai['id'] }}">{{ $ai['name'] }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Nama Instansi <span class="login-danger">*</span></label>
                                                <input class="form-control" type="text" name="instansi" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Layanan <span class="login-danger">*</span></label>
                                                <select class="form-control" name="reason_id">
                                                    @foreach($alasan_out as $ai)
                                                    <option value="{{ $ai['id'] }}">{{ $ai['name'] }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Layanan <span class="login-danger">*</span></label>
                                                <select class="form-control" name="rate">
                                                    <option value="1">Memuaskan</option>
                                                    <option value="2">Tidak Memuaskan</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" value="ex" name="type">
                                                <button class="btn btn-primary btn-block" type="submit">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="/assets/js/jquery-3.6.0.min.js"></script>

        <script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="/assets/js/feather.min.js"></script>

        <script src="/assets/js/script.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


        <script src="/assets/plugins/toastr/toastr.min.js"></script>

        <script src="/assets/plugins/toastr/toastr.js"></script>


        <script type="text/javascript">
            $(document).ready(function() {
                // show the alert
                setTimeout(function() {
                    $(".alert").alert('close');
                }, 2000);

                $('.select2input').select2();
            });
        </script>
        @if(session()->has('success'))
        <script type="text/javascript">
            toastr.success('{{ session("success") }}');
        </script>
        @endif
</body>

</html>