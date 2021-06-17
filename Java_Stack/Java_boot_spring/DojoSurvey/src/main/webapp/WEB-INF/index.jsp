<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action='/render' method='post'>
    Name: <input type="text" name="name">
    <br> Dojo Location :
      <select name = "location">
        <option value = "Nablus" >Nablus</option>
        <option value = "Ramallah">Ramallah</option>
        <option value = "Jenin">Jenin</option>
     </select>
        <p>Favorite Language:</p>
        <input type="radio" name="favlang" value="HTML">
        <label for="male">HTML</label><br>
        <input type="radio" name="favlang" value="Java">
        <label for="female">Java</label><br>
        <input type="radio"  name="favlang" value="Python">
        <label for="other">Python</label>

        <br>

    Comments: <textarea name="comment"> </textarea>
    <br><br>
    <input type="submit" value="Button">
    </form>

</body>
</html>