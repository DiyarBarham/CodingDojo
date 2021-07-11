<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" />
<meta charset="ISO-8859-1">
<title>Event Planner</title>
</head>
<body>
	<div class="container">
	<h2><strong>Create a new course</strong></h2>

		<form:form action="/courses/new" method="post"
			modelAttribute="newCourse">
			<input type="hidden" name="_method" value="put">
			<form:hidden value="${ user.id }" path="host" />
			<div class="form-group">
				<form:label path="name">Name:</form:label>
				<form:errors path="name"></form:errors>
				<form:input class="form-control" path="name" placeholder="Name"></form:input>
			</div>
			<div class="form-group">
				<form:label path="instructor">Instructor:</form:label>
				<form:errors path="instructor"></form:errors>
				<form:input class="form-control" path="instructor"></form:input>
			</div>
			<div class="form-group">
				<form:label path="capacity">Capacity:</form:label>
				<form:errors path="capacity" />
				<form:input class="form-control" type="number" min="1" path="capacity"></form:input>
			</div>
			
			<button>Create</button>
		</form:form>
	</div>
</body>
</html>	