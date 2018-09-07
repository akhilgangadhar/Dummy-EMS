<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
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
.header {
	height: 60px;
	text-align: right;
	padding: 5px;
	background: url('images/menu.jpg');
	border-top: 1px solid black;
}


.login {
	position: absolute;
	top: 60px;
}

img {
	width: 1266px;
	height: 333px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
</head>

<body>
	<div class="header">
		<h3><a href="index.jsp">Home | </a> <a href="about.obj">About Us | </a> <a
			href="login.obj">Login | </a></h3>
	</div>
	<div class="image">
		<img src="images/login.jpg">

		<div class="login">
			<center>
				<h1 style="color: #551aa2">WELCOME TO EMPLOYEE MAINTENANCE
					SYSTEM</h1>
				<br> <br>
			</center>
			<table>
				<s:form action="loginDetails.obj" modelAttribute="user"
					method="post" id="loginform">

					<tr>
						<td>Enter UserName:</td>
						<td><s:input path="userName" /></td>
						<td><s:errors path="userName"></s:errors></td>
					</tr>
					<tr>
						<td>Enter Password:</td>
						<td><s:password path="password" /></td>
						<td><s:errors path="password"></s:errors></td>
					</tr>
					<tr>
						<td><input type="submit" value="LOGIN" /></td>
					</tr>
				</s:form>
			</table>
		</div>



	</div>

</body>
</html>