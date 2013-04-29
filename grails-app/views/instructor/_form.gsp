<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffname', 'error')} required">
	<label for="staffname">
		<g:message code="instructor.staffname.label" default="Staff Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="staffname" required="" value="${instructorInstance?.staffname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffId', 'error')} required">
	<label for="staffId">
		<g:message code="instructor.staffId.label" default="Staff Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="staffId" required="" value="${instructorInstance?.staffId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="instructor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${instructorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="instructor.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.classes?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

