<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<style>
.error{color:red}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		<br>
		<br>
		Last name: <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"/>
		
		<br> <br>
		
		Select Country: <form:select path="country">
		<form:option value="Brazil" label="Brazil"></form:option>
		<form:option value="France" label="France"></form:option>
		<form:option value="Germany" label="Germany"></form:option>
		<form:option value="India" label="India"></form:option>
		</form:select>
		
		<br>
		<br>
		Java <form:radiobutton path="favoriteLanguage" value="java"/>
		C++ <form:radiobutton path="favoriteLanguage" value="c++"/>
		.net <form:radiobutton path="favoriteLanguage" value=".net"/>
		Ruby <form:radiobutton path="favoriteLanguage" value="ruby"/>
		
		<br>
		<br>
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="linux"/>
		MAC <form:checkbox path="operatingSystems" value="linux"/>
		Windows <form:checkbox path="operatingSystems" value="linux"/>
		
		<br>
		<br>
		
		<form:button>Submit</form:button>
		</form:form>
</body>
</html>