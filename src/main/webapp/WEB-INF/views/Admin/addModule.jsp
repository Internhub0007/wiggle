<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Modules Form</title>
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
						action="module_register">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<h2>Register Module</h2>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="model">Module name:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="moduleName" class="form-control"
											placeholder="Name">
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

