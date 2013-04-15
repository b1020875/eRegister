package uk.ac.shu.webarch.eregister

class RegistrationSheet {

Course course
Date regsheetdate
String additionalnotes
String shortcode

Set signatures
Set regClass

static mapping = {
}

static constraints = {
	additionalnotes(nullable:false, blank:false, maxsize:256);
}

}
