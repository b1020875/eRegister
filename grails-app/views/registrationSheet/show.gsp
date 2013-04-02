
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'Registration Sheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationSheet" class="content scaffold-show" role="main">
			<h1>Registration Sheet Information</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationSheet">
			
				<g:if test="${registrationSheetInstance?.additionalnotes}">
				<li class="fieldcontain">
					<span id="additionalnotes-label" class="property-label"><g:message code="registrationSheet.additionalnotes.label" default="Additional Notes" /></span>
					
						<span class="property-value" aria-labelledby="additionalnotes-label"><g:fieldValue bean="${registrationSheetInstance}" field="additionalnotes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="registrationSheet.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${registrationSheetInstance?.course?.id}">${registrationSheetInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.regsheetdate}">
				<li class="fieldcontain">
					<span id="regsheetdate-label" class="property-label"><g:message code="registrationSheet.regsheetdate.label" default="Registration Sheet Date" /></span>
					
						<span class="property-value" aria-labelledby="regsheetdate-label"><g:formatDate date="${registrationSheetInstance?.regsheetdate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
