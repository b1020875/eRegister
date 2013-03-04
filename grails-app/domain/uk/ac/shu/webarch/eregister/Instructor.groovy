package uk.ac.shu.webarch.eregister

class Instructor {

String staffname
String staffId

Set classes

static hasMany = [classes:RegClass]

static mapping = [classes:'instructor']

static constraints = {
	staffname(nullable:false, blank:false, maxsize:256);
	staffId(nullable:false, blank:false, maxsize:20, unique:true);
}
}
