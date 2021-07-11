<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
		<link rel="stylesheet" href="/css/main.css" />
		<meta charset="ISO-8859-1">
	<title>Courses</title>
</head>
	<body>
		<div class="container">
			<h2>${ course.name }</h2>
			<div class="event-details-side">
				<h4><strong>Instructor:</strong> ${ course.instructor }</h4>
				<h4><strong>Sign Ups:</strong> ${ event.current }</h4>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Sign Up Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ ucs }" var="uc">
					<c:choose>
					<c:when test="${uc.course == course}">
							<tr>
							<td>${ uc.user.name }</td>
							<td>${ uc.createdAt}</td>
							<td>
							<c:choose>
								<c:when test="${uc.user == user}">
								<a href="/remove/${uc.id}/${course.id}">Cancel</a>
								</c:when>
								</c:choose>
							</td>
						</tr>
					</c:when>
						</c:choose>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<a href="/edit/${course.id }"><button>Edit</button></a> <a href="/delete/${course.id }"><button>Delete</button></a>
			</div>
	</body>
</html>