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
	<title>Event Planner</title>
</head>
	<body>
		<div class="container">
			<h2>${ event.name }</h2>
			<div class="event-details-side">
				<h4><strong>Host:</strong> ${ event.host.firstname }</h4>
				<h4><strong>Date:</strong> ${ event.date }</h4>
				<h4><strong>Location:</strong> ${ event.location }, ${ event.states.name }</h4>
				<h4><strong>People attending:</strong> ${ event.users.size() }</h4>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Location</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ event.users }" var="user">
						<tr>
							<td>${ user.firstname } ${ user.lastname }</td>
							<td>${ user.location }, ${ user.states.name }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="event-details-side">
				<h3>Message Wall</h3>
				<div class="messages">
				<c:forEach items="${ mm }" var="message">
					<p>${ message.user.firstname } says: ${ message.message }</p>
				</c:forEach>
				</div>
				<form:form action="/events/${ event.id }" method="post" modelAttribute="newMessage">
					<div class="form-group">
						<form:label path="message" for="comment">Add Comment</form:label>
						<span>${ error }</span>
						<form:textarea name="comment" id="comment" class="form-control" path="message"></form:textarea>
						<button>Add Comment</button>
					</div>
				</form:form>
			</div>
		</div>
	</body>
</html>