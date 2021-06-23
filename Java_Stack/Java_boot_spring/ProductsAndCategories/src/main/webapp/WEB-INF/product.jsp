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
<title>Dojo's ninjas</title>

</head>
<body>
	<h1>${product.name }</h1>
	
	<div style="display:flex; justify-content;space-around;">
		<div>
		<h3>Categories:</h3>
		<c:forEach items="${ product.categories }" var="category">
  		<h6>- ${category.name}</h6>
		</c:forEach>
		</div>
		
		
		<div>
		<form action="/products/${product.id}" method="post">
			<select name="category">
			        <c:forEach items="${ categories }" var="cat">

								<option value="${cat.id}">${cat.name}</option>
			        	
					</c:forEach>
		    </select>
		    <input type="submit" value="submit">
		</form>
		</div>
	</div>
  
  
 
</body>
</html>