<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Registration Application Login</title>
	</head>

	<body>


<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

<g:form controller="login" action="login">
<div text ="#FFFFFF" id="header" style="background-color:#6C8CD5;text-align:center;padding-bottom:10px;">
 <h1 style="margin-bottom:0;text-align:center;">Registration Instructor Menu</h1>

		<b><g:link controller = "Instructor">Instructors</g:link> | 
		<g:link controller = "Student">Students</g:link> | 
		<g:link controller = "Enrollment">Enrollment</g:link> | 
		<g:link controller = "Course">Courses</g:link> | 
		<g:link controller = "RegClass">Classes</g:link> |  
		<g:link controller = "RegistrationEntry">Registration Entry</g:link> | 
		<g:link controller = "RegistrationSheet">Registration Sheet</g:link></b>

</div>

<div id="mainbody" style="background-color:#6C8CD5;text-align:center;">

	<img border="0" src="/eRegister/images/class.jpg" width="580" height="350">

</div>
</g:form>

<div id="footer" style="background-color:#6C8CD5;clear:both;text-align:center;padding-bottom:4px;">
 Copyright © Frankie Preston 2013</div>


	</body>
</html>

