package uk.ac.shu.webarch.eregister

class Course {

String courseName
String courseID
String coursedescription

Set classes

static hasmany = [classes: RegClass]

static mapping = {
	table 'Course'
	coursename column: 'coursename'
	courseID column: 'mapped_course_code'
	coursedescription column: 'coursedescription', type: 'text'
}

static constraints = {
	courseName(nullable:false, blank:false, maxsize:256);
	courseID(nullable:false, blank:false, maxsize:20, unique:true);
}

}
