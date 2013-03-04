<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'additionalnotes', 'error')} ">
	<label for="additionalnotes">
		<g:message code="registrationSheet.additionalnotes.label" default="Additionalnotes" />
		
	</label>
	<g:textField name="additionalnotes" value="${registrationSheetInstance?.additionalnotes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="registrationSheet.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${registrationSheetInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'regsheetdate', 'error')} required">
	<label for="regsheetdate">
		<g:message code="registrationSheet.regsheetdate.label" default="Regsheetdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="regsheetdate" precision="day"  value="${registrationSheetInstance?.regsheetdate}"  />
</div>

