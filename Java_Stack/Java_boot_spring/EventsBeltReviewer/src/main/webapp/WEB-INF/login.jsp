<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h1>Welcome</h1>
	<div>
		<fieldset>
			<legend>Register</legend>
			<form:form action="/questions/new" method="post"
				modelAttribute="newQuest">
				<div class="form-group">
					<form:label path="question">Question</form:label>
					<form:errors path="question" />
					<form:textarea class="form-control" path="question"></form:textarea>
				</div>
				<div class="form-group">
					<form:label path="tags">Tags</form:label>
					<form:input class="form-control" path="tags" />
				</div>
				<button>Submit</button>
			</form:form>
		</fieldset>
	</div>

</body>
</html>