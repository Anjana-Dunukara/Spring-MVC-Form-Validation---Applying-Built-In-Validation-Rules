<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
	<title>Student Registration Form</title>
	</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	
		First Name: <form:input path="firstName"/>
		
		<br><br>
		
		Last Name: <form:input path="lastName"/>
		
		<br><br>
		
		Country: <form:select path="country">
					<form:options items="${student.countryOptions}" />
				</form:select>
				
		<br><br>
		
		Favorite Language: 
		
		<form:radiobutton path="favoriteLanguage" value="Java" />Java 
		<form:radiobutton path="favoriteLanguage" value="C#" /> C# 
		<form:radiobutton path="favoriteLanguage" value="PHP" />PHP 
		<form:radiobutton path="favoriteLanguage" value="Ruby" />Ruby 
		
		<br><br>
		
		Operating Systems:
		
		<form:checkbox path="operatingSystems" value="Linux" /> Linux
		<form:checkbox path="operatingSystems" value="Mac OS" /> Mac OS
		<form:checkbox path="operatingSystems" value="Windows" /> MS Windows
		<form:checkbox path="operatingSystems" value="DOS" /> DOS
		
		<br><br>
		
		<input type="submit" value="Submit"/>
		
	</form:form>
	



</body>

</html>