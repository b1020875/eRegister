
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
			
				<g:if test="${registrationSheetInstance?.shortcode}">
				<li class="fieldcontain">
					<span id="shortcode-label" class="property-label"><g:message code="registrationSheet.shortcode.label" default="Shortcode" /></span>
					
						<span class="property-value" aria-labelledby="shortcode-label"><g:fieldValue bean="${registrationSheetInstance}" field="shortcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.regClass}">
				<li class="fieldcontain">
					<span id="regClass-label" class="property-label"><g:message code="registrationSheet.regClass.label" default="Class" /></span>
					
						<span class="property-value" aria-labelledby="regClass-label"><g:link controller="regClass" action="show" id="${registrationSheetInstance?.regClass?.id}">${registrationSheetInstance?.regClass?.name}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.regsheetdate}">
				<li class="fieldcontain">
					<span id="regsheetdate-label" class="property-label"><g:message code="registrationSheet.regsheetdate.label" default="Registration Sheet Date" /></span>
					
						<span class="property-value" aria-labelledby="regsheetdate-label"><g:formatDate format="EEE, dd MMM, yyyy" date="${registrationSheetInstance?.regsheetdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.signatures}">
				<li class="fieldcontain">
					<span id="signatures-label" class="property-label"><g:message code="registrationSheet.signatures.label" default="Signatures" /></span>
					
						<g:each in="${registrationSheetInstance.signatures}" var="s">
						<span class="property-value" aria-labelledby="signatures-label"><g:link controller="registrationEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

			
				<g:if test="${registrationSheetInstance?.additionalnotes}">
				<li class="fieldcontain">
					<span id="additionalnotes-label" class="property-label"><g:message code="registrationSheet.additionalnotes.label" default="Additional Notes" /></span>
					
						<span class="property-value" aria-labelledby="additionalnotes-label"><g:fieldValue bean="${registrationSheetInstance}" field="additionalnotes"/></span>
					
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
