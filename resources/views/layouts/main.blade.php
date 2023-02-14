<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Puska - Perpustakaan Kaltara</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="/assets/plugins/feather/feather.css">

    <link rel="stylesheet" href="/assets/plugins/icons/flags/flags.css">

    <link rel="stylesheet" href="/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="/assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="/assets/plugins/simpleline/simple-line-icons.css">

    <link rel="stylesheet" href="/assets/plugins/datatables/datatables.min.css">

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />

    <link rel="stylesheet" href="/assets/plugins/icons/feather/feather.css">

    <link rel="stylesheet" href="/assets/css/style.css">

    <style>
        .bottom-wrapper {
            margin-bottom: 2em;
        }
    </style>
</head>

@yield('bodyClass')

@include('layouts.header')

@include('layouts.sidebar')

<div class="main-wrapper">

    <div class="page-wrapper">
        <div class="content container-fluid">

            <meta name="_token" content="{!! csrf_token() !!}" />
            <input id="url" type="hidden" value="{{ \Request::url() }}">

            @yield('container')
        </div>

        <footer>
            <p>Copyright © 2022 Dreamguys.</p>
        </footer>
    </div>
</div>

<script src="/assets/js/jquery-3.6.0.min.js"></script>

<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/assets/js/feather.min.js"></script>

<script src="/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="/assets/plugins/apexchart/apexcharts.min.js"></script>

<script src="/assets/plugins/apexchart/chart-data.js"></script>

<script src="/assets/plugins/toastr/toastr.min.js"></script>

<script src="/assets/plugins/toastr/toastr.js"></script>

<script src="/assets/plugins/datatables/jquery.dataTables.min.js"></script>

<script src="/assets/plugins/datatables/datatables.min.js"></script>

<script src="/assets/js/script.js"></script>

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script src="/js/app.js"></script>

<script src="/js/custom_script.js"></script>



@yield('custom-script')
</body>

</html>