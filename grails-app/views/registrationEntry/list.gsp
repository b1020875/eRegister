
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationEntry" %>
<!DOCTYPE html>
<html id="RegisterList">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationEntry.label', default: 'Registration Entry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="registrationEntry.regSheet.label" default="Registration Sheet" /></th>
					
						<th><g:message code="registrationEntry.student.label" default="Student" /></th>
					
						<g:sortableColumn property="timestamp" title="${message(code: 'registrationEntry.timestamp.label', default: 'Timestamp')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationEntryInstanceList}" status="i" var="registrationEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationEntryInstance.id}">${registrationEntryInstance.regSheet?.shortcode}</g:link></td>
					
						<td>${registrationEntryInstance.student?.name}</td>
					
						<td><g:formatDate format="EEE, d MMM, yyyy, HH:mm:ss, z" date="${registrationEntryInstance.timestamp}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
