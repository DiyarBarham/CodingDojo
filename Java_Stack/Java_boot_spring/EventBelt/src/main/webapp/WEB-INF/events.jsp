<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Events</title>
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
		<h1>Welcome, ${user.firstname}</h1>
		<a href="/logout">Logout </a>
	</div>
	<h5>Here are some of the events in your state:</h5>
	<table>
		<tr>
			<th>Name</th>
			<th>Date</th>
			<th>Location</th>
			<th>Host</th>
			<th>Action/Status</th>
		</tr>
		<c:forEach items="${ events }" var="e">
			<tr>
				<td><a href="/events/${e.id}">${e.name}</a></td>
				<td>${e.date}</td>
				<td>${e.location}</td>
				<td>${e.host.firstname}${e.host.lastname}</td>
				<td><c:choose>
						<c:when test="${user == e.host}">
							<a href="/events/${e.id}/edit">Edit</a> <a href="/delete/${e.id}">Delete</a>
						</c:when>
						<c:when test="${e.users.contains(user)}">Joining <a href="/cancel/${e.id }">Cancel</a></c:when>
						<c:otherwise><a href="/join/${e.id }">Join</a></c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>

	</table>
	<h5>Here are some of the events not in your state:</h5>
	<table>
		<tr>
			<th>Name</th>
			<th>Date</th>
			<th>Location</th>
			<th>State</th>
			<th>Host</th>
			<th>Action/Status</th>
		</tr>
		<c:forEach items="${ eventsnot }" var="e">
		<tr>
				<td><a href="/events/${e.id}">${e.name}</a></td>
				<td>${e.date}</td>
				<td>${e.location}</td>
				<td>${e.states.name}</td>
				<td>${e.host.firstname}${e.host.lastname}</td>
				<td><c:choose>
						<c:when test="${user == e.host}">
							<a href="/events/${e.id}/edit">Edit</a> <a href="/delete/${e.id}">Delete</a>
						</c:when>
						<c:when test="${e.users.contains(user)}">Joining <a href="/cancel/${e.id }">Cancel</a></c:when>
						<c:otherwise><a href="/join/${e.id }">Join</a></c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>

	</table>
	<div style="margin: 15px;">
		<form:form action="/events" method="post" modelAttribute="newEvent">
			<div class="form-group">
				<form:label path="name">Name</form:label>
				<form:errors path="name" />
				<form:input class="form-control" path="name"></form:input>
			</div>
			<div class="form-group">
				<form:label path="date">Date</form:label>
				<form:errors path="date" />
				<form:input type="date" class="form-control" path="date" />
			</div>
			<div class="form-group">
				<form:label path="location">Location</form:label>
				<form:errors path="location" />
				<form:input class="form-control" path="location" />
				<form:select class="form-control" path="states">
					<c:forEach items="${ states}" var="state">
						<option value="${state.id }">${state.name }</option>
					</c:forEach>
				</form:select>
			</div>

			<button>Add Event</button>
		</form:form>
	</div>
</body>
</html>