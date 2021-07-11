<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Courses</title>
<style type="text/css">
body {
	margin: 50px;
}

.asd {
	display: flex;
	justify-content: space-between;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<div class="asd">
		<h1>Welcome, ${user.name}</h1>
	</div>
	<h5>Courses</h5>
	<table>
		<tr>
			<th>Course</th>
			<th>instructor</th>
			<th>signups</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${ courses }" var="e">
			<tr>
				<td><a href="/courses/${e.id}">${e.name}</a></td>
				<td>${e.instructor}</td>
				<td>${e.current} /${e.capacity}</td>
				<td><c:choose>
						<c:when test="${e.users.size() == e.capacity}">
							Full
						</c:when>
						<c:when test="${e.users.contains(user)}">Already Added</c:when>
						<c:otherwise><a href="/join/${e.id }">Add</a></c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>

	</table>
	<br> <br>
	<a href="/courses/new"><button>Add a course</button></a>
	
</body>
</html>