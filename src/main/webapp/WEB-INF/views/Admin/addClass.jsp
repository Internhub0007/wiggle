<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="adminHeader.jsp"%>
<%@ include file="adminMenu.jsp"%>
</head>
<body>
<div class="content-inner">
		<!-- Page Header-->
		<header class="page-header">
			<div class="container-fluid">
				<h2 class="no-margin-bottom">Dashboard</h2>
			</div>
		</header>

		<!-- Dashboard Header Section    -->
		<section class="dashboard-header">
			<div class="container-fluid">
				<div class="row"></div>

				<div class="container">
					<form class="form-horizontal" role="form" method="POST"
						action="class_register">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<h2>Register Class</h2>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="model">Class name:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="className" class="form-control"
											placeholder="Class">
									</div>
								</div>
							</div>
						</div>
						

						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<button type="submit" class="btn btn-success">Register</button>
							</div>
						</div>
					</form>

				</div>
			</div>
	</div>
	</section>

</body>
</html>