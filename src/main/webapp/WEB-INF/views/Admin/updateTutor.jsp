<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Tutors</title>
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
			<div class="bg-light ">

				<div class="container">
					<form class="form-horizontal" role="form" method="POST"
						action="tutor_update">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<h2>Register Tutors</h2>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="model">Id:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="name" class="form-control" value = "${tutor.id}"
											readonly="readonly">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="model">Name:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="name" value="${tutor.name}"
											class="form-control" >
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="email">Email:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="email" value="${tutor.email}"
											class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="email">Password</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="password" name="password"
											value="${tutor.password}" class="form-control"
											readonly="readonly">
									</div>
								</div>
							</div>
						</div>
								<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="streetName">Street:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="tutorAddress.streetName" class="form-control" value = "${tutor.tutorAddress.streetName}"
											>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="state">State:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="tutorAddress.state" class="form-control" value = "${tutor.tutorAddress.state}"
											>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="country">Country:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="tutorAddress.country" class="form-control" value = "${tutor.tutorAddress.country}"
											>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="phoneNumber">Phone Number:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="phoneNumber" class="form-control" value = "${tutor.phoneNumber}"
											>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="email">Module</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="module" value="${tutor.module}"
											class="form-control">
									</div>
								</div>
							</div>

						</div>
						
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="vechileType">Class:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<select class="form-control" name="classNo">
											<option value="1" ${tutor.classNo=='1'?'selected':''}>1</option>
											<option value="2" ${tutor.classNo=='2'?'selected':''}>2</option>
											<option value="3" ${tutor.classNo=='3'?'selected':''}>3</option>

										</select>
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
	</div>

</body>
</html>