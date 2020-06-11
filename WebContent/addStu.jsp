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

	<h1>Add Studen</h1>

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
					<label for="inputUsername">Username</label> <input type="text"
						class="form-control" id="inputUsername">
				</div>
				<div class="form-group col-md-6">
					<label for="inputState">Section</label> <select id="inputState"
						class="form-control">
						<option value="RA">RA</option>
						<option value="RB">RB</option>
						<option value="RC">RC</option>
						<option value="DA">DA</option>
						<option value="DA">DB</option>
						<option value="DA">CSB</option>
					</select>
				</div>
			</div>
		</div>


		<div class="card-footer text-muted">
			<button type="submit" class="btn btn-primary btn-lg btn-block">ADD</button>
		</div>
	</div>

	<br>

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