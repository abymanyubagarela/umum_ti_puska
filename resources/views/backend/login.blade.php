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

							<h2>Log in</h2>

							@if(session()->has('success'))
							<div class="alert alert-success alert-dismissible fade show" role="alert">
								{{ session('success') }}
							</div>
							@endif
							@if(session()->has('loginError'))
							<div class="alert alert-danger alert-dismissible fade show" role="alert">
								{{ session('loginError') }}
							</div>
							@endif

							<form method="POST" class="needs-validation" action="/backend/login" novalidate="" autocomplete="off">
								@csrf
								<div class="form-group">
									<label>Email <span class="login-danger">*</span></label>
									<input class="form-control" type="text" name="email" id="email" required>
									<div class="invalid-feedback">
										Email is required
									</div>
								</div>
								<div class="form-group">
									<label>Password <span class="login-danger">*</span></label>
									<input class="form-control pass-input" type="password" name="password" id="password" required>
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-primary btn-block" type="submit">Login</button>
								</div>
							</form>
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

	<script type="text/javascript">
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms)
				.forEach(function(form) {
					form.addEventListener('submit', function(event) {
						if (!form.checkValidity()) {
							event.preventDefault()
							event.stopPropagation()
						}

						form.classList.add('was-validated')
					}, false)
				})
		})()

		$(document).ready(function() {
			// show the alert
			setTimeout(function() {
				$(".alert").alert('close');
			}, 2000);
		});
	</script>
</body>

</html>