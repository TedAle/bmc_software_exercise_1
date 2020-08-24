<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Catalog</title>
</head>
<body>
	<table border="1">
		<c:forEach var="entry" items="${wines}">
		<c:if test="${entry.show == 'Y'}">
			<tr>
				<td colspan=2><img alt="${entry.wine.name}" src="${entry.wine.image_data_uri}" width="300" height="400"/></td>
			</tr>
			<tr>
				<td>Nome</td>
				<td><c:out value="${entry.wine.name}" /></td>
			</tr>
			<tr>
				<td>Grado Alcolico</td>
				<td><c:out value="${entry.wine.abv}" /></td>
			</tr>
			<tr>
				<td>Marca</td>
				<td><c:out value="${entry.wine.brand}" /></td>
			</tr>
			<tr>
				<td>Prezzo</td>
				<td><c:out value="${entry.wine.price}" /> <c:out value="${entry.wine.currency}" /></td>
			</tr>
			<tr>
				<td>Descrizione</td>
				<td><c:out value="${entry.wine.description}" /></td>
			</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>