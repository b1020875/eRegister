package uk.ac.shu.webarch.eregister

class RegClass {

String name
Instructor instructor

course course

set students

    static hasMany = []

  static mappedBy = []

  static constraints = {}

  static mapping = {
    classInstructor column:'instructor_fk'
    course column:'course_fk'
  }
}
