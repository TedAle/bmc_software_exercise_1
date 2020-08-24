<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<form:form method="post" id="welcomeForm" modelAttribute="login" action="showCatalogPage">
		<table>
			<tr>
				<td><form:label path="username">Welcome ${username}</form:label></td>
				<td><form:hidden path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:hidden path="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="openCatalog"
						name="openCatalog">Open Catalog</form:button></td>
			</tr>

			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
</body>
</html>