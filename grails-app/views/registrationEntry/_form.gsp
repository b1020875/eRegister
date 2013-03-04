<%@ page import="uk.ac.shu.webarch.eregister.RegistrationEntry" %>



<div class="fieldcontain ${hasErrors(bean: registrationEntryInstance, field: 'timestamp', 'error')} required">
	<label for="timestamp">
		<g:message code="registrationEntry.timestamp.label" default="Timestamp" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timestamp" type="number" value="${registrationEntryInstance.timestamp}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationEntryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="registrationEntry.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${registrationEntryInstance?.student?.id}" class="many-to-one"/>
</div>

