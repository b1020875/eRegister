package uk.ac.shu.webarch.eregister

class RegistrationSheet {

RegClass regClass
Date regsheetdate = new Date()
String additionalnotes
String shortcode

Set signatures

static hasMany = [signatures:RegistrationEntry]

static mapping = {
}

static constraints = {
	shortcode(nullable:false, blank:false);
}

}
