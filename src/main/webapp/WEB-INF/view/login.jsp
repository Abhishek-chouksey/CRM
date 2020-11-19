<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page isELIgnored="false"%>

<html>

<head>
	
	
</head>

<body>

<h3>Login to Customer Tracker</h3>

	<form:form action="login"
			   method="POST">
	
		<!-- Check for login error -->
	

			
		<p>
			User name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>
		
		<input type="submit" value="Login" />
		
		${msg}
		
	</form:form>

</body>

</html>












