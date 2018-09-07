<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>DISPLAY</title>
</head>
<body>
	<h1>Employee Records</h1><br>
	<table border="1" align="center">
	<tr>
		<th bgcolor="bisque">Employee Id</th>
		<th bgcolor="bisque">Employee First Name</th>
		<th bgcolor="bisque">Employee Last Name</th>
		<th bgcolor="bisque">Date of Birth</th>
		<th bgcolor="bisque">Date of Joining </th>
		<th bgcolor="bisque">Department Id</th>
		<th bgcolor="bisque">Grade</th>
		<th bgcolor="bisque">Designation</th>
		<th bgcolor="bisque">Basic salary</th>
		<th bgcolor="bisque">Gender</th>
		<th bgcolor="bisque">MaritalStatus</th>
		<th bgcolor="bisque">Address</th>
		<th bgcolor="bisque">Phone Number</th>
		<th bgcolor="bisque">Manager ID</th>
		<th bgcolor="bisque">Remaining Leaves</th>
		<c:forEach var="employeeList" items="${list}">
			<tr><td>${employeeList.employeeId }</td>
			<td>${employeeList.firstName}</td>
			<td>${employeeList.lastName}</td>
			<td>${employeeList.dateOfBirth }</td>
			<td>${employeeList.dateOfJoining }</td>
			<td>${employeeList.departmentId }</td>
			<td>${employeeList.grade }</td>
			<td>${employeeList.designation }</td>
			<td>${employeeList.salary }</td>
			<td>${employeeList.gender}</td>
			<td>${employeeList.maritalStatus }</td>
			<td>${employeeList.address }</td>
			<td>${employeeList.phoneNumber}</td>
			<td>${employeeList.managerId}</td>
			<td>${employeeList.remainingLeaves}</td>
		</tr>
		</c:forEach>
	
	</table>
	<br>
	<form action="admin.obj" method="post">
		<input type="submit" value = "HOME" />
	</form>
	
</body>
</html>