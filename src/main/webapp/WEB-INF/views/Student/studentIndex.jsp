<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Dashboard</title>
<%@include file="studentHeader.jsp"%>
<%@include file="studentMenu.jsp"%>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<!-- 	<div class="container-fluid">
		Page Header
		<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Dashboard</h2>
		</div>
		</header>
		</div> -->
	<div
		class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0  toppad">


		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">${student.name}</h3><a href ="#">Request Update</a>
			</div>
			<div class="panel-body">
				<div class="avatar">
					<img src="resources/Images/avatar1.png" alt="..."
					class="img-fluid rounded-circle">
					</div>

					
					<div class=" col-md-9 col-lg-9 ">
						<table class="table table-user-information">
							<tbody>
								<tr>
									<td>Module:</td>
									<td>${student.course.courseName}</td>
								</tr>
								<tr>
									<td>Date Of Birth:</td>
									<td>${student.dob}</td>
								</tr>

								<tr>
									<td>Gender</td>
									<td>${student.gender}</td>
								</tr>
								<tr>
									<td>Home Address</td>
									<td>${student.studentAddress.streetName},${student.studentAddress.state},${student.studentAddress.country}</td>
								</tr>
								<tr>
									<td>Email</td>
									<td>${student.email}</td>
								</tr>
								<tr>
									<td>Phone Number</td>
									<td>${student.phoneNumber}<br>
									</td>
								</tr>

							</tbody>

						</table>


					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>


	</div>
	</div>
	</div>
	</div>
</body>
</html>
