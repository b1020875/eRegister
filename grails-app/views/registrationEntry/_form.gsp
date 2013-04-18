<%@ page import="uk.ac.shu.webarch.eregister.RegistrationEntry" %>



<div class="fieldcontain ${hasErrors(bean: registrationEntryInstance, field: 'regSheet', 'error')} required">
	<label for="regSheet">
		<g:message code="registrationEntry.regSheet.label" default="Registration Sheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regSheet" name="regSheet.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" optionValue="shortcode" required="" value="${registrationEntryInstance?.regSheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationEntryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="registrationEntry.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" optionValue="name" required="" value="${registrationEntryInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationEntryInstance, field: 'timestamp', 'error')} required">
	<label for="timestamp">
		<g:message code="registrationEntry.timestamp.label" default="Timestamp" />
	</label>
	<g:formatDate format="EEE, d MMM, yyyy, HH:mm:ss, z" name="timestamp" precision="day"  value="${registrationEntryInstance?.timestamp}"  />
</div>

