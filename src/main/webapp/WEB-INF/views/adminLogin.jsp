<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/css/log.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/login.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/popper.min.js"></script>
<script type="text/javascript" src="resources/js/login.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="main">
		<h1>WUC PORTAL</h1>

		<img src="resources/Images/bc1.jpg" alt="" class="box-img">

		<form class="form-signin" action="login" method="post">
			<span id="reauth-email" class="reauth-email"></span> <input
				type="text" id="inputEmail" class="form-control" name="uname"
				placeholder="Username" required autofocus> <input
				type="password" id="inputPassword" class="form-control" name="pass"
				placeholder="Password" required>
			<div id="remember" class="checkbox">

				<button class="btn btn-lg btn-primary btn-block btn-signin"
					type="submit">Sign in</button>
		</form>
		<!-- /form -->
	</div>
</body>
</html>