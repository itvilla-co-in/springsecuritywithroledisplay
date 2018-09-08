<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>  

<html>

<head>
	<title>itvilla Company Home Page</title>
</head>

<body>
	<h2>itilla Home Page</h2>
	<hr>
	
	<security:authorize access="isAuthenticated()">
	Logged in USER  : <security:authentication property="principal.username" /> </br>
	HAS ROLE : <security:authentication property="principal.authorities" />  </br>
	</security:authorize>
	
	
	
	Welcome to our home page. We hope you are having good learning !!

	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>