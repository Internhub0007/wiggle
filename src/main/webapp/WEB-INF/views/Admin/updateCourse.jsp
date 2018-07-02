<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Course</title>
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
		<section class="dashboard-header">
		<div class="container">
			<form class="form-horizontal" role="form" method="POST"
				action="course_update" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<h2>Register Course</h2>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="model">Course:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<input type="text" name="courseName" class="form-control" value="${course.courseName}">
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="vechileType">Years:</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<select name="years" class="form-control ">
									<option value="1"${course.years=='1'?'selected':''}>1</option>
									<option value="2"${course.years=='2'?'selected':''}>2</option>
									<option value="3"${course.years=='3'?'selected':''}>3</option>
									<option value="4"${course.years=='4'?'selected':''}>4</option>
								</select>
							</div>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="modules">Modules:</label>
					</div>
					<div>
						<c:forEach items="${module}" var="mr" >
							<input id="option" type="checkbox" name = "moduleIds"  value="${mr.id}">
							<label for="option">${mr.moduleName}</label>
							<%-- ${course.modules=='moduleIds'?'checked':''} --%>
							<br>
						</c:forEach>
					</div>

				</div>

				<div class="col-md-3">
					<div class="col-md-6">
						<button type="submit" class="btn btn-success">Register</button>
					</div>
				</div>
		</form>
	</div>
	</section>
</body>
</html>