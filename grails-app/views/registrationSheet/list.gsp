
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'Registration Sheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="additionalnotes" title="${message(code: 'registrationSheet.additionalnotes.label', default: 'Additional Notes')}" />

						<th><g:message code="registrationSheet.course.label" default="Course" /></th>
			
						<g:sortableColumn property="regsheetdate" title="${message(code: 'registrationSheet.regsheetdate.label', default: 'Registration Sheet Date')}" />

						<g:sortableColumn property="shortcode" title="${message(code: 'registrationSheet.shortcode.label', default: 'Short Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationSheetInstanceList}" status="i" var="registrationSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationSheetInstance.id}">${fieldValue(bean: registrationSheetInstance, field: "additionalnotes")}</g:link></td>
					
						<td>${registrationSheetInstance.course?.courseName}</td>

					
						<td><g:formatDate date="${registrationSheetInstance.regsheetdate}" /></td>

						<td><g:link action="show" id="${registrationSheetInstance.id}">${fieldValue(bean: registrationSheetInstance, field: "shortcode")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
