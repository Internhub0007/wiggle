<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						action="tutors_register">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<h2>Register Tutors</h2>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="model">Name:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="text" name="name" class="form-control"
											placeholder="Name">
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
										<input type="text" name="email" class="form-control"
											placeholder="Email">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="dob">Date of birth:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<input type="Date" name="dob" class="form-control"
											placeholder="Birth Date">
									</div>
								</div>
							</div>
						</div>

						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 ">Gender</label>
							<div class="col-sm-9">
								<div class="i-checks">
									<input id="radioCustom1" type="radio" value="Male"
										name="gender" class="radio-template"> <label
										for="radioCustom1">Male</label>
								</div>
								<div class="i-checks">
									<input id="radioCustom2" type="radio" value="Female"
										name="gender" class="radio-template"> <label
										for="radioCustom2">Female</label>
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
										<input type="text" name="tutorAddress.streetName"
											class="form-control" placeholder="Street">
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
										<input type="text" name="tutorAddress.state"
											class="form-control" placeholder="State">
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
										<input type="text" name="tutorAddress.country"
											class="form-control" placeholder="Country">
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
										<input type="text" name="phoneNumber" class="form-control"
											placeholder="Number">
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 field-label-responsive">
							<label for="modules">Module:</label>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<select class="form-control" name="moduleId">
										<c:forEach items="${modules}" var="cr">
											<option value="${cr.id}">${cr.moduleName}</option>
										</c:forEach>
									</select>
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
								<select class="form-control" name="classId">
									<c:forEach items="${classes}" var="cr">
										<option value="${cr.id}">${cr.className}</option>
									</c:forEach>

								</select>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-4"></div>
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