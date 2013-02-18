package uk.ac.shu.webarch.eregister

class RegClass {

String name
String instructor

Set students

    static hasMany = []

  static mappedBy = []

  static constraints = {}

  static mapping = {
    classInstructor column:'instructor_fk'
    course column:'course_fk'
  }
}
