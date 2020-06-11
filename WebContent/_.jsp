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