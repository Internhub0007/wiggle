<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<%@include file="adminHeader.jsp"%>
<%@include file="adminMenu.jsp"%>
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
			<div class="row">					
				</div>
				<!-- Line Chart            -->
				<div class="chart">
					<div
						class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
						<canvas id="lineCahrt"></canvas>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
