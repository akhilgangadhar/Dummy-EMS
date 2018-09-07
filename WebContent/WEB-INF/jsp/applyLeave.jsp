<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LEAVE APPLICATION</title>
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
<body>
<table >
		<s:form action="addLeaveDetails.obj" modelAttribute="leave" method="post">
			<tr>
				<td>Start Date : <span style="color: red;">*</span></td>
				<td><s:input path="startdate" type="date"/></td>
				<td><s:errors path="startdate"></s:errors></td>
			</tr>
			<tr>
				<td>Leave Duration: <span style="color: red;">*</span></td>
				<td><s:input path="duration" /></td>
				<td><s:errors path="duration"></s:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="ADD LEAVE" /></td>
			</tr>
			</s:form>
			</table>
</body>
</html>