<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="regClass.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="regClass.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${regClassInstance?.name}"/>
</div>

