<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<style type="text/css">
body {
	text-align: center;
	padding: 5px;
	background-color: #01a8d5;
	border-top: 1px solid black;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN PAGE</title>
</head>
<body>
	
	<marquee>
		<h1><font color="#551aa2" size="5pt"> WELCOME ADMIN ${name } </font></h1>
	</marquee>
	<br>
	<h3><a href = "add.obj" >ADD EMPLOYEE</a><br></h3>
	<h3><a href = "modify.obj">UPDATE EMPLOYEE</a><br></h3>
	<h3><a href = "display.obj">DISPLAY ALL EMPLOYEE DETAILS</a> <br></h3>
	
	<c:if test="${flag ne null}">
	<h3><a href = "checkLeaves.obj">CHECK APPLIED LEAVES</a></h3> 
	</c:if>
	<br><br>
	<form action="index.jsp">
		<input type = "submit" value="LOGOUT" />
	</form> 
	
	<!-- <a href="index.jsp">LOGOUT</a> -->
</body>
</html>