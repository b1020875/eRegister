package uk.ac.shu.webarch.eregister

class RegClass {

	String name
	String code
	Instructor instructor
	Course course

Set students

  static hasMany = [
    enrolledStudents:Enrollment
  ]

  static mappedBy = [
    enrolledStudent:'RegClass'
  ]

  static constraints = {}

  static mapping = {
    classInstructor column:'instructor_fk'
    course column:'course_fk'
  }
}
