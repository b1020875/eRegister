package uk.ac.shu.webarch.eregister

class Student {

	String name
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

}
