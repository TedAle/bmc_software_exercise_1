<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>

	<h1>Error occurred</h1>
	<h2>Please contact website admin</h2>
	<spring:eval expression="@environment.getProperty('emergency.email')" var="emergencyEmail" />
	<a href="mailto:${emergencyEmail}">Send Email to website admin</a>
	<a href="/">Home</a>
</body>
</html>