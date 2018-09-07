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
<title>ADD DETAILS</title>
</head>
<body>
<c:if test="${temp==0}">
<h1>ADDING EMPLOYEE DETAILS : </h1><br><br>
	<table >
		<s:form action="addEmployee.obj" modelAttribute="employee" method="post">
			<tr>
				<td>Enter Employee Id : <span style="color: red;">*</span></td>
				<td><s:input path="employeeId" /></td>
				<td><s:errors path="employeeId"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Employee First Name : <span style="color: red;">*</span></td>
				<td><s:input path="firstName" /></td>
				<td><s:errors path="firstName"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Employee Last Name : <span style="color: red;">*</span></td>
				<td><s:input path="lastName" /></td>
				<td><s:errors path="lastName"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Date of Birth : </td>
				<td><s:input path="dateOfBirth"
						type="date" /></td>
				<td><s:errors path="dateOfBirth"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Date of Joining : </td>
				<td><s:input path="dateOfJoining"
						type="date" /></td>
				<td><s:errors path="dateOfJoining"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Employee Department Id : </td>
				<td><s:input path="departmentId" /></td>
				<td><s:errors path="departmentId"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Grade : <span style="color: red;">*</span></td>
				<td><s:select path="grade">
						<s:option value="Select Grade">
						</s:option>
						<s:options items="${grade}"></s:options>
					</s:select>
				</td>
				<td><s:errors path="grade"></s:errors></td>
			</tr>


			<tr>
				<td>Enter Employee Designation : </td>
				<td><s:input path="designation" />
				</td>
				<td><s:errors path="designation"></s:errors></td>
			</tr>


			<tr>
				<td>Enter MaritalStatus : <span style="color: red;">*</span></td>
				<td><s:select path="maritalStatus">
						<s:option value="select Marital Status"></s:option>
						<s:option value="S">Single</s:option>
						<s:option value="M">Married</s:option>
						<s:option value="D">Divorced</s:option>
						<s:option value="W">Widowed</s:option>
					</s:select>
				</td>
				<td><s:errors path="maritalStatus"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Gender : </td>
				<td><s:radiobutton path="gender" value="M" />Male
					<s:radiobutton path="gender" value="F" />Female
				</td>
				<td><s:errors path="gender"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Salary : <span style="color: red;">*</span></td>
				<td><s:input path="salary" />
				</td>
				<td><s:errors path="salary"></s:errors></td>
			</tr>
			<tr>
				<td>Enter Address : </td>
				<td><s:input path="address" />
				</td>
				<td><s:errors path="address"></s:errors></td>
			</tr>
			<tr>
				<td>Enter PhoneNumber : </td>
				<td><s:input path="phoneNumber" /></td>
				<td><s:errors path="phoneNumber"></s:errors></td>
			</tr>
			<tr>
				<td>Enter ManagerID : </td>
				<td><s:input path="managerId" /></td>
				<td><s:errors path="managerId"></s:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="ADD EMPLOYEE" /></td>
			</tr>
		</s:form>
	</table>
	<form action="admin.obj" method="post">
		<input type="submit" value = "HOME" />
	</form>
	</c:if>
	<c:if test="${temp==1 }">
	<h1>SUCCESSFULLY ADDED EMPLOYEE ID : ${id }</h1>
	<form action="admin.obj" method="post">
		<input type="submit" value = "HOME" />
	</form>
	</c:if>
</body>
</html>