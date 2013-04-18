<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="regClass.name.label" default="Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" value="${regClassInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regclassInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="regclass.code.label" default="Class Code" />
		<span class="required-indicator">*</span>		
	</label>
	<g:textField name="code" value="${regClassInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="regClass.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" optionValue="staffname" required="" value="${regClassInstance?.instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="regClass.course.label" default="Select Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" optionValue="courseName" required="" value="${regClassInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} ">
	<label for="course">
		<g:message code="regClass.course.label" default="Courses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.course?}" var="c">
    <li><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>
</div>

