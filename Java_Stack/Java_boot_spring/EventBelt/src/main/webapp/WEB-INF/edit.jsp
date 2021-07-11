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
	<h2><strong>${ event.name }</strong></h2>
		<h2>
			Edit Event
		</h2>
		<form:form action="/events/${ event.id }/edit" method="post"
			modelAttribute="event">
			<input type="hidden" name="_method" value="put">
			<form:hidden value="${ user.id }" path="host" />
			<div class="form-group">
				<form:label path="name">Name</form:label>
				<form:errors path="name"></form:errors>
				<form:input class="form-control" path="name" value="${event.name }"></form:input>
			</div>
			<div class="form-group">
				<form:label path="date">Date</form:label>
				<form:errors path="date"></form:errors>
				<form:input class="form-control" type="date" path="date" value="${event.date }"></form:input>
			</div>
			<div class="form-group">
				<form:label path="location">Address</form:label>
				<form:errors path="location" />
				<form:input class="form-control" path="location"  value="${event.location }" />
			</div>
			<div class="form-group">
				<form:label path="states">State</form:label>
				<form:errors path="states" />
				<form:select class="form-control" path="states">
					<c:forEach items="${ states }" var="state">
						<c:choose>
							<c:when test="${ state.equals(event.states) }">
								<option selected value="${ state.id }">${ state.name }</option>
							</c:when>
							<c:otherwise>
								<option value="${ state.id }">${ state.name }</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</form:select>
			</div>
			<button>Update Event</button>
		</form:form>
	</div>
</body>
</html>	