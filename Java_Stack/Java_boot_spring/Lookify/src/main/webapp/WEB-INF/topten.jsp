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
	<div class="container"></div>
		<div class="container">
		<div style="display:flex; justify-content:space-between; ">
		<p>Top Ten Songs:</p>

		<a href="/dashboard">Dashboard</a>
	</div>

			<c:forEach items="${ songs }" var="song">
				<p>${song.rating} - <a>${song.title } - {song.artist}</a></p>

			</c:forEach>

		 
	</div>
</body>
</html>