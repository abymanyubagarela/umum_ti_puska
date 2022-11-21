<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />
	<title>Sistem Informasi BPK Kaltara</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/css/app.css" rel="stylesheet">
	<link href="/css/style.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.12.1/fh-3.2.4/r-2.3.0/datatables.min.css"/>
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        .row{
            margin-bottom:10px;
        }
    </style>

</head>
<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="/">
					<span class="align-middle">BPK KALTARA</span>
				</a>
			</div>
		</nav>
		<div class="main">
		{{-- <nav class="navbar navbar-expand navbar-light navbar-bg">
			<a class="sidebar-toggle js-sidebar-toggle">
				<i class="hamburger align-self-center"></i>
			</a>
		</nav> --}}
		<main class="content">
			<div class="container-fluid p-0">
				<div class="row align-items-center justify-content-center container-form-additional">
                    <div class="col-md-12 float-end">
                        <a href="https://10.147.1.47/tamu"><div class="btn btn-primary">Register Tamu</div></a>
                    </div>
					<div class="col-md-12 py-5 ">
					  <h3>Peminjaman Kendaraan</h3>
					  <p class="mb-4" id="clock-wrapper"></p>

					  <form role="form" method="POST" enctype="multipart/form-data" id="fkend">

						<div class="row">
						   <div class="col-md-12">
							  <div class="form-group first">
								 <label class="form-label" for="fname">Nama Peminjam</label> <br>
								 <select class="form-control form-select select2"name="account_id" required id="account_id" required>
								   <option value=""> Peminjam </option>
								 </select>
							  </div>
						   </div>
						</div>

						<div class="row">
						  <div class="col-md-6">
							  <div class="form-group first">
								 <label for="lname">Nama Driver</label>
								 <select class="form-control select2"name="driver_id" required id="driver_id" required>
									<option value=""> Driver </option>
								 </select>
							  </div>
						   </div>
						   <div class="col-md-6">
							  <div class="form-group first">
								 <label for="fname">Mobil</label>
								 <select class="form-control select2"name="vehicle_id" required id="vehicle_id" required>
								   <option value=""> Mobil </option>
								 </select>
							  </div>
						   </div>
						</div>

						 <div class="row">
						  <div class="col-md-6">
							  <div class="form-group first">
								 <label for="lname">Tanggal</label>
								 <input type="date" class="form-control"name="tanggal" required>
							  </div>
						   </div>
						   <div class="col-md-6">
							  <div class="form-group first">
								 <label for="fname">Waktu</label>
								 <input type="time" class="form-control"name="waktu" required>
							  </div>
						   </div>
						</div>

						<div class="row">
						  <div class="col-md-6">
							  <div class="form-group first">
								 <label for="lname">Tujuan</label>
								 <textarea class="form-control"name="tujuan"required></textarea>
							  </div>
						   </div>
						   <div class="col-md-6">
							  <div class="form-group first">
								 <label for="fname">Keperluan</label>
								 <textarea class="form-control"name="keperluan"required></textarea>
							  </div>
						   </div>
						</div>
						<input type="submit" value="Simpan" class="btn btn-primary">
					  </form>
					</div>
				  </div>


			</div>
		</main>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>



		  <script type="text/javascript">
			  const base = 'http://10.147.1.47:8080/api';

			 $(function() {
				$('.select2').select2({
				  width: 'resolve'
				});

				setInterval(function() {
					var date = new Date();
                    console.log(date);
					$('#clock-wrapper').html(
						getDayName() + ", " + date.getDate() + " " + getMonthName(date.getMonth()) + " " + date.getFullYear() + " " + date.getHours() + ":" + (date.getMinutes()<10?'0':'') + date.getMinutes() + ":" +date.getSeconds()
					  );
				}, 500);

				getAccounts();

				getDrivers();

				getCars();

				$('#myCarousel').carousel({
					interval: 3000
				})
			 });

			 function getDayName() {
				var date = new Date();

				var days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

				var d = new Date(date);

				var dayName = days[d.getDay()];

				return dayName
			 }

			 function getMonthName(p) {
				const monthNames = ["Januari", "Februari", "Maret", "April", "Mei", "Juni",
				  "Juli", "Agustus", "September", "Oktober", "November", "Desember"
				];

				return monthNames[p]
			 }

			 function getAccounts() {
			   $('#account_id').select2({
				minimumInputLength: 2,
				minimumResultsForSearch: 10,
				ajax: {
					url: base + '/accounts',
					dataType: "json",
					type: "GET",
					data: function (params) {

						var queryParameters = {
							term: params.term
						}
						return queryParameters;
					},
					processResults: function (data) {
					  console.log(data)
						return {
							results: $.map(data, function (item) {
								return {
									text: item.account_name,
									id: item.id
								}
							})
						};
					}
				}
			  });
			 }

			 function getCars() {
				$.ajax({
				  url: base + '/vehicles',
				  dataType: "json",
				  type: "GET",
				  encode: true,
				  success: function(data){
					$.map(data, function (item) {
					  var newOption = new Option((item.nomor + ' - ' + item.name), item.id);
					  $('#vehicle_id').append(newOption).trigger('change');
					 })
				  },
				});
			 }

			function getDrivers() {

				$.ajax({
				  url: base + '/drivers',
				  dataType: "json",
				  type: "GET",
				  encode: true,
				  success: function(data){
					$.map(data, function (item) {
					  var newOption = new Option(item.name, item.id);
					  $('#driver_id').append(newOption).trigger('change');
					 })
				  },
				});

			 }

			  $("#fkend").submit(function (event) {
				event.preventDefault();

				$.ajax({
				  type: "POST",
				  url: base + '/vehicle-loan',
				  data : $('#fkend').serialize(),
				  dataType: "json",
				  encode: true,
				  success: function(){
                    new swal({
						  title: 'Peminjaman Kendaraan Berhasil!',
						  text: 'Berhasil Disimpan!',
						  type: 'success'
					  }, function() {
                        alert('asd');
					  });
					setTimeout(function() {
                        location.reload()
					}, 1000);
				  },
				  error: function(){
                    new swal({
						title: 'Peminjaman Kendaraan Gagal!',
						text: 'Gagal Disimpan!',
						type: 'error'
					}, function() {

					});
					setTimeout(function() {
                        location.reload();
					}, 1000);
				  },
				})
			  });
		  </script>



</body


