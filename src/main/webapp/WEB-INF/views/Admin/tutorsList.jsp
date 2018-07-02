<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutors</title>
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

		<!-- 	<!-- Dashboard Header Section    -->
		<section class="dashboard-header">
		<div class="container">
			<div class="row">
				<div class="header">
					<h3>
						<a href="tutors_form"><span class="badge badge-primary">Add
								Tutor</span></a>
					</h3>
				</div>
				<div class="bg-light ">
					<c:if test="${!empty tutors}">
						<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">SN</th>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">D.O.B</th>
								<th scope="col">Gender</th>
								<th scope="col">Street</th>
								<th scope="col">State</th>
								<th scope="col">Country</th>
								<th scope="col">Phone</th>
								<th scope="col">Class</th>

								<th scope="col">Module</th>
								<th scope="col">Actions</th>
							</tr>
							</thead>
							<tbody>
								<c:forEach items="${tutors}" var="v" varStatus="c">
									<tr>
										<th>${c.count}</th>
										<td>${v.name}</td>
										<td>${v.email}</td>
										<td>${v.dob}</td>
										<td>${v.gender}</td>
										<td>${v.tutorAddress.streetName}</td>
										<td>${v.tutorAddress.state}</td>
										<td>${v.tutorAddress.country}</td>
										<td>${v.phoneNumber}</td>
										<td>${v.classes.className}</td>

										<td>${v.module.moduleName}</td>
										<td><a href="tutor_edit?id=${v.id}">Edit</a> <a
											href="tutor_delete?id=${v.id}">Delete</a></td>
									</tr>
								</c:forEach>
						</table>
					</c:if>
				</div>
			</div>
		</div>
		</section>
	</div>


</body>
</html>