<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="chrome=1, IE=11" />
<meta name="format-detection" content="telephone=no" />

<title>CCR</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="fonts/styles.min.css">
</head>
<body>

	<%@include file="menu.jsp"%>

	<h1>Edit Teacher</h1>

	<div class="card">
		<div class="card-header">One by One</div>
		<div class="card-body">

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Fristname</label> <input type="text"
						class="form-control" id="inputEmail4">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Lastname</label> <input type="text"
						class="form-control" id="inputPassword4">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Username</label> <input type="text"
						class="form-control" id="inputEmail4">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Password</label> <input type="text"
						class="form-control" id="inputPassword4">
				</div>
			</div>
		</div>


		<div class="card-footer text-muted">
			<button type="submit" class="btn btn-primary btn-lg btn-block">ADD</button>
		</div>
	</div>

	</br>

	<div class="card">
		<div class="card-header">Import</div>
		<div class="card-body">

			<form>
				<label for="file">Add File</label>
				<div class="custom-file">
					<input type="file" class="custom-file-input"
						id="validatedCustomFile" required> <label
						class="custom-file-label" for="validatedCustomFile">Choose
						file...</label>
					<div class="invalid-feedback">Example invalid custom file
						feedback</div>
				</div>
			</form>
		</div>


		<div class="card-footer text-muted">
			<button type="submit" class="btn btn-primary btn-lg btn-block">ADD</button>
		</div>
	</div>

	</br>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Username</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
			</tr>
		</tbody>
	</table>

	</div>
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="js/jquery-3.3.1.slim.min.js">
		
	</script>
	<!-- Popper.JS -->
	<script src="js/popper.min.js">
		
	</script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js">
		
	</script>
	<!-- Menu -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
		});
	</script>

</body>
</html>