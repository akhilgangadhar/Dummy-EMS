<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Leave Details</title>
</head>
<body><s:form action="leaveStatus.obj" method="post" modelAttribute="employee" >
<table border="2px" align="center">
<tr>
<td>Leave Id</td>
<td>Employee Id</td>
<td>Leave Balance</td>
<td>Start Date</td>
<td>Duration</td>
<td>End Date</td>
</tr>

<c:forEach var="temp" items="${list}">
<tr>
<td>${temp.leaveId}</td>
<td>${temp.employeeId}</td>
<td>${temp.remainingLeaves}</td>
<td>${temp.startdate}</td>
<td>${temp.duration}</td>
<td>${temp.enddate}</td>

<td colspan="2">
		<input type="submit" value = "Approve" name="approve" />
		<input type="submit" value = "Reject" name="reject"/>
</td>
</tr>
</c:forEach>

</table>
</s:form>
</body>
</html>