<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Employee</title>
<style>
a {
	font-family: Times New Roman;
	color: green;
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
    <c:if test="${isFirst==true }">
	<s:form action="searchEmp.obj" modelAttribute="employee" method="post">
		<c:if test="${name==id}">
			<s:label path="employeeId">Enter employeeId</s:label>
			<s:errors path="employeeId"></s:errors>
			<s:input path="employeeId"  />
		</c:if>

		<c:if test="${name==fname}">
			<s:label path="firstName">Enter first name</s:label>
			<s:errors path="firstName"></s:errors>
			<s:input path="firstName"  />
		</c:if>

		<c:if test="${name==lname}">
			<s:label path="lastName">Enter last name</s:label>
			<s:errors path="lastName"></s:errors>
			<s:input path="lastName" />
		</c:if>

		<c:if test="${name==grade}">
			<s:label path="grade">Enter grade</s:label>
			<s:errors path="grade"></s:errors>
			<s:input path="grade" />
		</c:if>

		<c:if test="${name==maritalStatus}">
			<s:label path="maritalStatus">Enter Marital Status</s:label>
			<s:errors path="maritalStatus"></s:errors>
			<s:input path="maritalStatus" />
		</c:if>
		
		<input type="submit" value="search"/>
	</s:form>
</c:if>
	<c:if test="${isFirst!=true}">
		<center>
			<h2 align="center">Employee Information</h2>
		</center>
		<table border="1" >
			<tr>
				<td bgcolor="bisque">Employee Id</td>
				<td bgcolor="bisque">Employee First Name</td>
				<td bgcolor="bisque">Employee Last Name</td>
				<td bgcolor="bisque">Date of Birth</td>
				<td bgcolor="bisque">Date of Joining</td>
				<td bgcolor="bisque">Employee Department Id</td>
				<td bgcolor="bisque">Grade</td>
				<td bgcolor="bisque">Employee Designation</td>
				<td bgcolor="bisque">MaritalStatus</td>
				<td bgcolor="bisque">Gender</td>
				<td bgcolor="bisque">Salary</td>
				<td bgcolor="bisque">Address</td>
				<td bgcolor="bisque">PhoneNumber</td>
			</tr>

			
			<c:forEach var="emp" items="${plist}">
			<tr>
				<td>${emp.employeeId}</td>
				<td>${emp.firstName}</td>
				<td>${emp.lastName }</td>
				<td>${emp.dateOfBirth }</td>
				<td>${emp.dateOfJoining }</td>
				<td>${emp.departmentId }</td>
				<td>${emp.grade }</td>
				<td>${emp.designation }</td>
				<td>${emp.maritalStatus }</td>
				<td>${emp.gender }</td>
				<td>${emp.salary }</td>
				<td>${emp.address }</td>
				<td>${emp.phoneNumber }</td>
			</tr>
             </c:forEach>

			
		</table>
		<br>	
	</c:if>
	<form action="userPage.obj" method="post">
		<input type="submit" value="HOME" />
	</form>
</body>
</html>


