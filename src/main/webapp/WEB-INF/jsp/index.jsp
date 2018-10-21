<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatibile" content="IE=Edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GTM">

<title>Task Manager | Home</title>

<!-- 	<link href="static/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="static/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Bootsample</a>
				<div class="navbar-brand">
					<ul class="nav navbar-nav">
						<li><a href="#">Manage Task</a></li>
						<li><a href="#">All Task</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div class="container invisible-at-first" id="homeDiv">
		<div class="jumbotron text-center">
			<h1>Welcome to Task Manager</h1>
		</div>
	</div>
	<div class="container text-center" id="taskDiv">
		<h3>My Task</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Description</th>
						<th>Date Created</th>
						<th>Finished</th>
					</tr>					
				</thead>
				<tbody>
					<c:forEach var="task" items="${tasks}">
						<tr>
							<td>${task.id}</td>
							<td>${task.name}</td>
							<td>${task.description}</td>
							<td>${task.date_Created}</td>
							<td>${task.finished}</td>						
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- 	<script src="static/js/jquery-1.11.1.min.js"></script> -->
	<!-- 	<script src="static/js/bootstrap.min.js"></script> -->

</body>
</html>