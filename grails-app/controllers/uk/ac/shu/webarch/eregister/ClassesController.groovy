package uk.ac.shu.webarch.eregister

import grails.converters.*

class ClassesController{

  def index(){

	def result=[:]

	result.ClassList = []

	RegClass.findAll().each { cls ->
		result.classList.add([instructorName:cls.classInstructor.name,
					courseCode:cls.course.courseCode,
					courseName:cls.course.courseName,
					classCode:cls.code,
					className:cls.name])
		}

withFormat{
html result
xml {render result as XML}
json {render results as JSON}
  }
 }

}
