<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Students Form</title>
<%@ include file="adminHeader.jsp"%>
<%@ include file="adminMenu.jsp"%>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" role="form" method="POST"
			action="student_register">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2>Register Student</h2>
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
					<label for="email">Username:</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<input type="text" name="username" class="form-control"
								placeholder="username">
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
							<input type="text" name="password" class="form-control"
								placeholder="Email">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="email">Roll NO:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="text" name="rollNo" class="form-control"
									placeholder="Email">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="email">Course:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="text" name="courseId" class="form-control"
									placeholder="Course">
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
									<option value="a">A</option>
									<option value="b">B</option>
									<option value="c">C</option>

								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="engineType">Modules:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="radio" name="moduleId" value="petrol"
									placeholder="Engine Type">Petrol <input type="radio"
									name="engineType" value="diesel" placeholder="Engine Type">Diesel
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="email">Attendence:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="text" name="attendence" class="form-control"
									placeholder="Attendence">
							</div>
						</div>
					</div>

				</div>
				<!-- <div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="manufatureDate">Manufacture Date:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="date" name="manufactureDate" class="form-control">
							</div>
						</div>
					</div>
				</div> -->

				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="vechileNo">Report:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="number" name="report" class="form-control"
									placeholder="Report">
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
</body>
</html>