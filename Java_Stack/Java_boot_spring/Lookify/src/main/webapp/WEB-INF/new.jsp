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
<link rel="stylesheet" href="css/main.css" />
<title>Languages App</title>
</head>
<body>
	<div style="display:flex; justify-content:flex-end; margin-right: 3em">
		<a href="/dashboard">Dashboard</a>
	</div>
	<form action="/songs/new" method="post"> 
		Title: <input type="text" name="title"><br><br>
		Artist: <input type="text" name="artist"><br><br>
		Rating(1-10): <input type="number" name="rating" min="1" max="10"><br><br>
		<input type="submit" value="add new user">
	</form>
</body>
</html>