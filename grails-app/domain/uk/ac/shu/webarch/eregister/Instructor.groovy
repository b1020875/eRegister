package uk.ac.shu.webarch.eregister

class Instructor {

String staffname
String staffID

Set classes

static hasMany = [classes:RegClass]

static mapping = [
	classes:'instructor'
	]
}
