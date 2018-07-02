<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Students Form</title>
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
						action="student_register">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<h2>Update Student</h2>
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
										<input type="text" name="name" class="form-control" value ="${students.name}"
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
										<input type="text" name="email" class="form-control" value ="${students.email}"
											placeholder="Email">
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
										<input type="text" name="studentAddress.streetName" class="form-control" value ="${students.studentAddress.streetName}"
											placeholder="Street">
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
										<input type="text" name="studentAddress.state" class="form-control" value ="${students.studentAddress.state}"
											placeholder="State">
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
										<input type="text" name="studentAddress.country" class="form-control" value ="${students.studentAddress.country}"
											placeholder="Country">
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
										<input type="text" name="phoneNumber" class="form-control" value ="${students.phoneNumber}"
											placeholder="Number">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 field-label-responsive">
								<label for="course">Course:</label>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group mb-2 mr-sm-2 mb-sm-0">
										<select class="form-control" name="courseId" value ="${students.course}">
											<c:forEach items="${courses}" var="cr">
												<option value="${cr.id}">${cr.courseName}</option>
											</c:forEach>
										</select>
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
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<button type="submit" class="btn btn-success">Update</button>
							</div>
						</div>
					</form>

				</div>
			</div>
	</div>
	</section>
</body>
</html>

