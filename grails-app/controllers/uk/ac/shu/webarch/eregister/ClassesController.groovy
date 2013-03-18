package uk.ac.shu.webarch.eregister

import grails.converters.*

class RegClassController{

  def index(){

	def result=[:]

	result.ClassList = []

	RegClass.findAll().each { Cls -> result.classList.add([instructorName:cls.classInstructor.name,
								courseName:cls.course.courseName,
								className:cls.name])
		}

withFormat{
html result
xml {render result as XML}
json {render results as JSON}
  }
 }

}
