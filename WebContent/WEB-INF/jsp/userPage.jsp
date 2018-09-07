<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USER DETAILS</title>
<style>
a {
	font-family: Times New Roman;
	color: black;
	font-size: 14pt;
	font-style: normal;
	text-decoration: initial;
	margin-left: 15px;
	margin-right: 15px;
}
body {
	text-align: center;
	padding: 5px;
	background-color: #01a8d5;
	border-top: 1px solid black;
}
</style>
</head>
<body >
	<marquee>
		<h1><font color="#551aa2" size="5pt"> WELCOME USER ${name } </font></h1>
	</marquee>

	<h2><a href="search.obj">Search Employee</a>
	</h2><br>
	<h2><a href="applyLeave.obj">Apply For Leave</a>
	</h2><br>
	${flag}
	<c:if test="${flag ne null}">
	<h2><a href = "checkLeaves.obj">Check Applied Leaves</a><br></h2> 
	</c:if>
	<form action="index.jsp">
		<input type = "submit" value="LOGOUT" />
	</form>
	
	<!-- <a href="index.jsp">LOGOUT</a> -->
</body>
</html>