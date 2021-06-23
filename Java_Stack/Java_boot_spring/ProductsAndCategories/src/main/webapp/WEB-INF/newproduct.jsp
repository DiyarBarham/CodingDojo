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
<title>Dojo App</title>
</head>
<body>
	<div class="container">
		<h1>New Product</h1>
		<form action="/products/new" method="post" modelAttribute="new">
		    <div class="form-group">
		        <form:label path="name">Name:</form:label>
		        <form:errors path="name"/>
		        <input class="form-control" name="name" path="name"/>
		    </div>
		    <div class="form-group">
		        <form:label path="desc">Description:</form:label>
		        <form:errors path="desc"/>
		        <input class="form-control" name="desc" path="desc"/>
		    </div>
		    <div class="form-group">
		        <form:label path="price">Price:</form:label>
		        <form:errors path="price"/>
		        <input class="form-control" type="number" step="0.01" name="price" path="price"/>
		    </div>
		    <input type="submit" value="Create"/>
		</form>
	</div>
</body>
</html>