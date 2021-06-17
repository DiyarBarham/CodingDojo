<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/login" method="post">
		email: <input type="email" name="email"> password: <input
			type="password" name="password"> <input type="submit"
			name="submit" value="Login">
	</form>
</body>
</html>