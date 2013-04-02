<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrolledstudent', 'error')} required">
	<label for="enrolledstudent">
		<g:message code="enrollment.enrolledstudent.label" default="Enrolled Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enrolledstudent" name="enrolledstudent.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="name" optionValue="name" required="" value="${enrollmentInstance?.enrolledstudent?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'regclass', 'error')} required">
	<label for="regclass">
		<g:message code="enrollment.regclass.label" default="Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regclass" name="regclass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${enrollmentInstance?.regclass?.id}" class="many-to-one"/>
</div>

