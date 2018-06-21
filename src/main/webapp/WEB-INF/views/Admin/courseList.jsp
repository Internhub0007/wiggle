<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course List</title>
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
			<!-- Line Chart            -->
			<div class="chart">
				
					<a href="course_form">Add Course</a>
					<c:if test="${!empty courses }">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">SN</th>
									<th scope="col">Id</th>
									<th scope="col">Course name</th>
									<th scope="col">No of years</th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${courses}" var="v" varStatus="c">
									<tr>
										<th>${c.count}</th>
										<td>${v.id}</td>
										<td>${v.courseName}</td>
										<td>${v.years}</td>
										<td><a href="vehicle_edit?id=${v.id}">Edit</a> <a
											href="vehicle_delete?id=${v.id}">Delete</a></td>
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