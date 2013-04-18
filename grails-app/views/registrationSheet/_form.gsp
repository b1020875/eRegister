<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'shortcode', 'error')} required">
	<label for="shortcode">
		<g:message code="registrationSheet.shortcode.label" default="Short Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortcode" required="" value="${registrationSheetInstance?.shortcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'regClass', 'error')} required">
	<label for="regClass">
		<g:message code="registrationSheet.regClass.label" default="Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regClass" name="regClass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" optionValue="name" required="" value="${registrationSheetInstance?.regClass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'regsheetdate', 'error')} required">
	<label for="regsheetdate">
		<g:message code="registrationSheet.regsheetdate.label" default="Registration Sheet Date" />
	</label>
	<g:formatDate name="regsheetdate" precision="day" format="EEE, dd MMM, yyyy" value="${registrationSheetInstance?.regsheetdate}"  />
</div>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'signatures', 'error')} ">
	<label for="signatures">
		<g:message code="registrationSheet.signatures.label" default="Signatures"  />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.signatures?}" var="c">
    <li><g:link controller="registrationEntry" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registrationEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'signatures.label', default: 'Signatures')])}</g:link>
</li>
</ul>

</div>


<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'additionalnotes', 'error')} ">
	<label for="additionalnotes">
		<g:message code="registrationSheet.additionalnotes.label" default="Additional Notes" />
		
	</label>
	<g:textField name="additionalnotes" value="${registrationSheetInstance?.additionalnotes}"/>
</div>
