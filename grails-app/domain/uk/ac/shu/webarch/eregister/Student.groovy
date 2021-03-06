package uk.ac.shu.webarch.eregister

class Student {

	String name
	String password
	String studentNumber
	String notes

Set courses
Set classattends

    static hasMany = [
    courses: Enrollment,
    classattends: RegistrationEntry
  ]

  static mapping = [
    courses:'student',
    classattends:'student'
  ]

static constraints = {
	name(nullable:false, blank:false, maxsize:256);
	studentNumber(nullable:false, blank:false, maxsize:20, unique:true);
}

}
