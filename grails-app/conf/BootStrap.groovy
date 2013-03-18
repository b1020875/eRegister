import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("BootStrap::init");

	def ian_instructor = Instructor.findByStaffId('1234a') ?: new Instructor(staffId: '1234a', staffname: 'Ian Ibbotson').save();
	def donald_instructor = Instructor.findByStaffId('2314a') ?: new Instructor(staffId: '2314a', staffname: 'Donald Donaldson').save();
	def patrick_instructor = Instructor.findByStaffId('3241a') ?: new Instructor(staffId: '3241a', staffname: 'Patrick Hayes').save();

	def web_arch_course = Course.findByCourseID('4353') ?: new Course(courseID:'4353',
								courseName:'Web Architectures',
								coursedescription:'Learn about web structures').save();

	def monday_pm_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Mondays') ?:
		new RegClass(name:'WebArch-Mondays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();

	def tuesday_am_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Tuesdays') ?:
		new RegClass(name:'WebArch-Tuesdays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();

	def student_a = Student.findByStudentNumber('3425a') ?:
					new Student(studentNumber:'3425a',name:'Dave West', notes:'Likes web arch').save();

	def student_a_web_arch = Enrollment.findOrCreateByStudentAndRegClass(student_a,monday_pm_class)


	    }

    def destroy = {
    }
}
