<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        .Farm{
            display: inline-block;
            border: 2px solid black;
            width: 200px;
            height: 200px;
            padding-left: 20px;
        }
        .Cave{
            display: inline-block;
            border: 2px solid black;
            width: 200px;
            height: 200px;
            padding-left: 20px;
        }
        .House{
            display: inline-block;
            border: 2px solid black;
            width: 200px;
            height: 200px;
            padding-left: 20px;
        }
        .Casino{
            display: inline-block;
            border: 2px solid black;
            width: 200px;
            height: 200px;
            padding-left: 20px;
        }
        .cont{
            display: flex;
            justify-content: space-around;
        }
    </style>
</head>
<body>
	
    <h3>Your Gold: <c:out value="${gold}"/></h3>
    <div class="cont">
    <div class="Farm">
        <h1>Farm</h1>
        <h3>(earns 10-20 gold)</h3>
        <form action="/process_money" method="post">
            <input type="hidden" name="Farm"  value="Farm">
            <input type="submit" value="find gold">
        </form>
    </div>
    <div class="Cave">
        <h1>Cave</h1>
        <h3>(earns 5-10 gold)</h3>
        <form action="/process_money" method="post">            <input type="hidden" name="Farm" value="Cave">
            <input type="submit" value="find gold">
        </form>
    </div>
    <div class="House">
        <h1>House</h1>
        <h3>(earns 2-5 gold)</h3>
        <form action="/process_money" method="post">
            <input type="hidden" name="Farm"  value="House">
            <input type="submit" value="find gold">
        </form>
    </div>
    <div class="Casino">
        <h1>Casino</h1>
        <h3>(earns/takes 0-50 gold)</h3>
        <form action="/process_money" method="post">
            <input type="hidden" name="Farm"  value="Casino">
            <input type="submit" value="find gold">
        </form>
    </div>
    </div>
    </div>
</body>
</html>