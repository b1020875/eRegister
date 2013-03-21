import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("BootStrap::init");

	def ian_instructor = Instructor.findByStaffId('1234a') ?: new Instructor(staffId: '1234a', staffname: 'Ian Ibbotson').save();
	def donald_instructor = Instructor.findByStaffId('2314a') ?: new Instructor(staffId: '2314a', staffname: 'Donald Donaldson').save();
	def patrick_instructor = Instructor.findByStaffId('3241a') ?: new Instructor(staffId: '3241a', staffname: 'Patrick Hayes').save();

	def programing_course = Course.findByCourseID('5475') ?: new Course(courseID:'5475',
								courseName:'Programing',
								coursedescription:'Program Computers').save();
	def comp_essen_course = Course.findByCourseID('8732') ?: new Course(courseID:'8732',
								courseName:'Computer Essentials',
								coursedescription:'Learn about Computers').save();
	def web_arch_course = Course.findByCourseID('4353') ?: new Course(courseID:'4353',
								courseName:'Web Architectures',
								coursedescription:'Learn about web structures').save();

	def monday_am_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Mondays') ?:
		new RegClass(name:'WebArch-Mondays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();
	def monday_pm_class = RegClass.findByCourseAndName(programing_course, 'Programing-Mondays') ?:
		new RegClass(name:'Programing-Mondays',
			classInstructor:donald_instructor,
			course:programing_course).save();

	def tuesday_am_class = RegClass.findByCourseAndName(comp_essen_course, 'CompEssen-Tuesdays') ?:
		new RegClass(name:'CompEssen-Tuesdays',
			classInstructor:patrick_instructor,
			course:comp_essen_course).save();
	def tuesday_pm_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Tuesdays') ?:
		new RegClass(name:'WebArch-Tuesdays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();

	def wednesday_am_class = RegClass.findByCourseAndName(programing_course, 'Programing-Wednesdays') ?:
		new RegClass(name:'Programing-Wednesdays',
			classInstructor:donald_instructor,
			course:programing_course).save();
	def wednesday_pm_class = RegClass.findByCourseAndName(comp_essen_course, 'CompEssen-Wednesdays') ?:
		new RegClass(name:'CompEssen-Wednesdays',
			classInstructor:patrick_instructor,
			course:comp_essen_course).save();

	def thursday_am_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Thursdays') ?:
		new RegClass(name:'WebArch-Thursdays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();
	def thursday_pm_class = RegClass.findByCourseAndName(programing_course, 'Programing-Thursdays') ?:
		new RegClass(name:'Programing-Thursdays',
			classInstructor:donald_instructor,
			course:programing_course).save();

	def friday_am_class = RegClass.findByCourseAndName(comp_essen_course, 'CompEssen-Fridays') ?:
		new RegClass(name:'CompEssen-Fridays',
			classInstructor:patrick_instructor,
			course:comp_essen_course).save();
	def friday_pm_class = RegClass.findByCourseAndName(web_arch_course, 'WebArch-Fridays') ?:
		new RegClass(name:'WebArch-Fridays',
			classInstructor:ian_instructor,
			course:web_arch_course).save();


	def student_a = Student.findByStudentNumber('3425a') ?:
					new Student(studentNumber:'3425a',name:'Dave West', notes:'Likes web arch').save();
	def student_b = Student.findByStudentNumber('5675a') ?:
					new Student(studentNumber:'5675a',name:'Frank Skinner', notes:'Enjoys food').save();
	def student_c = Student.findByStudentNumber('5467a') ?:
					new Student(studentNumber:'5467a',name:'Betsy France', notes:'Reguar toilet trips').save();
	def student_d = Student.findByStudentNumber('7854a') ?:
					new Student(studentNumber:'7854a',name:'Eddie Eagle', notes:'Allergic to walls').save();

	def student_a_web_arch = Enrollment.findOrCreateByStudentAndRegClass(student_a,monday_pm_class)


	    }

    def destroy = {
    }
}
