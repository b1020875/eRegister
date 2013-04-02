<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="course.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${courseInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'coursedescription', 'error')} ">
	<label for="coursedescription">
		<g:message code="course.coursedescription.label" default="Course Description" />
		
	</label>
	<g:textField name="coursedescription" value="${courseInstance?.coursedescription}"/>
</div>

