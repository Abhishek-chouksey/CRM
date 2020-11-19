<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<body>
The student is confirmed: ${student.firstName} ${student.lastName}
	<br><br>
	Country: ${student.country}
	<br><br>
	Selected Language: ${student.favoriteLanguage }
	<br><br>
	Operating Systems:
	
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
		<li> ${temp }</li>
	</c:forEach>
	</ul>
</body>
</html>