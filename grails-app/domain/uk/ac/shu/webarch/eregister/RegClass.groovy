package uk.ac.shu.webarch.eregister

class RegClass {

	Instructor instructor
	Course course
	String name
	String code

Set enrolledSudents
Set registrationSheets

  static hasMany = [
    enrolledStudents:Enrollment
  ]

  static mappedBy = [
    enrolledStudents:'regClass'
  ]

  static constraints = {
    code(nullable:false, blank:false, maxsize:20, unique:true);
    name(nullable:false, blank:false, maxsize:20);
}

  static mapping = {
    classInstructor column:'instructor_fk'
    course column:'course_fk'
  }
}
