<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css" />
<title>Ninja App</title>
</head>
<body>
	<div class="container">
		<h1>New Ninja</h1>
		<form action="/ninjas/new" method="post" modelAttribute="new">
		<div class="form-group">
			<select name="dojo">
			        <c:forEach items="${ dojos }" var="dojo">
						<option value="${dojo.id}">${dojo.name}</option>
					</c:forEach>
		    </select>
		    </div>
		    <div class="form-group">
		        <form:label path="fname">First Name:</form:label>
		        <form:errors path="fname"/>
		        <input class="form-control" name="fname" path="fname"/>
		    </div>
		    <div class="form-group">
		        <form:label path="lname">Last Name:</form:label>
		        <form:errors path="lname"/>
		        <input class="form-control" name="lname" path="lname"/>
		    </div>
			 <div class="form-group">
		        <form:label path="age">Age:</form:label>
		        <form:errors path="age"/>
		        <input class="form-control" name="age" path="age"/>
		    </div>
		    <input type="submit" value="Create"/>
		</form>
	</div>
</body>
</html>