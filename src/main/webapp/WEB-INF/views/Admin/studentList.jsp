<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<a href="student_form">Add Student</a>
			<!-- Line Chart            -->
			<div class="bg-light ">


				<c:if test="${!empty students }">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">SN</th>
								<th scope="col">Roll no</th>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">D.O.B</th>
								<th scope="col">Gender</th>
								<th scope="col">Street</th>
								<th scope="col">State</th>
								<th scope="col">Country</th>
								<th scope="col">Course</th>
								<th scope="col">Class</th>
								<th scope="col">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${students}" var="v" varStatus="c">
								<tr>
									<th>${c.count}</th>
									<td>${v.id}</td>
									<td>${v.name}</td>
									<td>${v.email}</td>
									<td>${v.dob}</td>
									<td>${v.gender}</td>
									<td>${v.studentAddress.streetName}</td>
									<td>${v.studentAddress.state}</td>
									<td>${v.studentAddress.country}</td>
									<td>${v.course.courseName}</td>
									<td>${v.classes.className}</td>

									<td><a href="student_edit?id=${v.id}">Edit</a> <a
										href="student_delete?id=${v.id}">Delete</a></td>
								</tr>
							</c:forEach>
					</table>
				</c:if>
			</div>
		</div>
	</div>
	</div>
	</section>

</body>
</html>