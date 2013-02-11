package uk.ac.shu.webarch.eregister

class RegistrationSheet {

Course course

Date regsheetdate

Set signatures

String additionalnotes

String constraints = {
	course(nullable:false, blank:false);
	regsheetdate(nullable:fase, blank:false);
	additionalnotes(nullable:true, blank:true);
}
static mapping = {
	additionalnotes column: 'course_desc', type:'text'
}
}
