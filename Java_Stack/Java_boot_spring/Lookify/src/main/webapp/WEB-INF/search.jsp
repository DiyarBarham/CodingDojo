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
		<p>Songs by artist: ${artist}</p>
		<form action="/search/${title}">
			<input type="text" name="title">
			<input type="submit" value="New Search">
		</form>
		<a href="/dashboard">Dashboard</a>
	</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>rating</th>
					<th>actions</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ songs }" var="song">
				<tr>
					<td><a href="/language/${lang.id }">${ song.title }</a></td>
					<td>${ song.rating }</td>
					<td>
						<form id="delete-form" action="/music/${song.id}" method="post">
						    <input type="hidden" name="_method" value="delete">
						    <input class="btn btn-danger" type="submit" value="Delete">
						</form>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		 
	</div>
</body>
</html>