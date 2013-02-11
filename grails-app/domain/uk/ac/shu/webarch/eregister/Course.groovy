package uk.ac.shu.webarch.eregister

class Course {

String courseName
String courseID
String coursedescription

Set classes

    static constraints = {
	coursecode maxsize:20    
}

static hasmany = [classes: regclass]
static hasmany = [classes 'course']

static mapping = {
	table 'Course'
	coursename column: 'coursename'
	courseID column: 'mapped_course_code'
	coursedescription: 'course_description', type: 'text'
}

}
