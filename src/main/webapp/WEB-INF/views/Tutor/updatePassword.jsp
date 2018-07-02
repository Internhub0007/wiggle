<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutour Dashboard</title>
<%@include file="tutorHeader.jsp"%>
<%@include file="tutorMenu.jsp"%>
</head>
<body>
	<div class="content-inner">
		<!-- Page Header-->
		<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Dashboard</h2>
		</div>
		</header>
		<!-- Dashboard Counts Section-->
		<section class="dashboard-counts no-padding-bottom">
		<div class="container-fluid">
		
			<form class="form-horizontal" role="form" method="POST"
			action="update_password" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2>Update Password</h2>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="model"> New Password:</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<input type="text" name="password" class="form-control"
								placeholder="New Password">
						</div>
					</div>
				</div>
			</div>
			
		
		
		</div>
		</section>
	</div>
</body>
</html>
