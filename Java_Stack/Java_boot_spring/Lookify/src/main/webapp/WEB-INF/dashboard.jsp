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
	<div style="display:flex; justify-content:space-evenly">
		<a href="/songs/new">Add new</a>
		<a href="/search/topTen">Top Songs</a>
		<form action="/search/${title}">
			<input type="text" name="title">
			<input type="submit">
		</form>
	</div>
	<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>rating</th>
					<th>action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ music }" var="lang">
				<tr>
					<td><a href="/song/${lang.id }">${ lang.title }</a></td>
					<td>${ lang.rating }</td>
					<td>
						<form id="delete-form" action="/music/${lang.id}" method="post">
						    <input type="hidden" name="_method" value="delete">
						    <input class="btn btn-danger" type="submit" value="Delete">
						</form>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
</body>
</html>