<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
.cont {
	display: flex;
	justify-content: space-between;
}

.form-group {
	margin: 5px;
}

body {
	margin: 50px;
}
</style>
</head>
<body>
	<h1>Welcome</h1>
	<div class="cont">
		<div>
			<fieldset>
				<legend>Register</legend>
				<form:form action="/" method="post" modelAttribute="newUser">
					<div class="form-group">
						<form:label path="name">Name:</form:label>
						<form:errors path="name" />
						<form:input class="form-control" path="name"></form:input>
					</div>
					<div class="form-group">
						<form:label path="email">Email:</form:label>
						<form:errors path="email" />
						<form:input class="form-control" path="email" />
					</div>
					<div class="form-group">
						<form:label path="password">Password:</form:label>
						<form:errors path="password" />
						<form:input class="form-control" type="password" path="password" />
					</div>
					<div class="form-group">
						<form:label path="passwordConfirmation">Password Conf:</form:label>
						<form:errors path="passwordConfirmation" />
						<form:input class="form-control" type="password" path="passwordConfirmation" />
					</div>
					<button>Register</button>
				</form:form>
			</fieldset>
		</div>
		<div>
			<fieldset>
				<legend>Login</legend>
				<form method="post" action="/login">
				<p> ${error}</p>
					<p>
						<label for="email">Email:</label> <input type="text" id="email"
							name="email" />
					</p>
					<p>
						<label for="password">Password:</label> <input type="password"
							id="password" name="password" />
					</p>
					<input type="submit" value="Login!" />
				</form>
			</fieldset>
		</div>
	</div>
</body>
</html>