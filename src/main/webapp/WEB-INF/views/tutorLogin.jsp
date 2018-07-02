<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutor Login</title>
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
		

		<img src="resources/Images/tutor.jpg" alt="" class="box-img">

		<form class="form-signin" action="tlogin" method="post">
			<span id="reauth-email" class="reauth-email"></span> <input
				type="text" id="inputEmail" class="form-control" name="email"
				placeholder="Username" required autofocus> <input
				type="password" id="inputPassword" class="form-control" name="pass"
				placeholder="Password" required>
			<div id="remember" class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block btn-signin"
				type="submit">Sign in</button>
		</form>
		<!-- /form -->

		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#exampleModal" data-whatever="@mdo">Forgot the
			password?</button>

	</div>
	<!-- /card-container -->
	</div>
	<!-- /container -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">New message</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="tforgot_password" method="post">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Recipient:</label>
							<input type="text" class="form-control" id="recipient-name"
								name="email">
						</div>
						<button type="submit" class="btn btn-primary">Send
							message</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

</body>
</html>