package uk.ac.shu.webarch.eregister

class RegistrationSheet {

Course course

Date regsheetdate

Set signatures

String additionalnotes

static mapping = {
	additionalnotes column: 'course_desc', type:'text'
}
}
