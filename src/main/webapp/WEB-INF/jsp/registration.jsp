<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<form:form id="regForm" modelAttribute="customer" action="registrationProcess" method="POST">

		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
				<td><form:errors path="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
				<td><form:errors path="password" /></td>
			</tr>
			<tr>
				<td><form:label path="firstname">FirstName</form:label></td>
				<td><form:input path="firstname" name="firstname"
						id="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">LastName</form:label></td>
				<td><form:input path="lastname" name="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">Phone</form:label></td>
				<td><form:input path="phone" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="dob">Date of Birth</form:label></td>
				<td><form:input type="date" path="dob" name="dob" id="dob" /></td>
<%-- 				<td><form:input path="dob" id="dob" name="dob"/></td> --%>
			</tr>
			<tr>
				<th colspan="2"><bold>Shipping Address Information</bold></th>
			</tr>
			<tr>
				<td><form:label path="shipping_address.street">Street (with house number)</form:label></td>
				<td><form:input path="shipping_address.street" name="shipping_address.street" id="shipping_address.street" /></td>
			</tr>
			<tr>
				<td><form:label path="shipping_address.city">City</form:label></td>
				<td><form:input path="shipping_address.city" name="shipping_address.city" id="shipping_address.city" /></td>
			</tr>
			<tr>
				<td><form:label path="shipping_address.region">Region</form:label></td>
				<td><form:input path="shipping_address.region" name="shipping_address.region" id="shipping_address.region" /></td>
			</tr>
			<tr>
				<td><form:label path="shipping_address.nation">Nation</form:label></td>
				<td><form:input path="shipping_address.nation" name="shipping_address.nation" id="shipping_address.nation" /></td>
			</tr>
			<tr>
				<td><form:label path="shipping_address.province">Province</form:label></td>
				<td><form:input path="shipping_address.province" name="shipping_address.province" id="shipping_address.province" /></td>
			</tr>
			<tr>
				<td><form:label path="shipping_address.cap">Cap</form:label></td>
				<td><form:input path="shipping_address.cap" name="shipping_address.cap" id="shipping_address.cap" /></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="/">Home</a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>