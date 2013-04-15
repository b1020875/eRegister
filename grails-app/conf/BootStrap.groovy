import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("Loading Bootstrap");

	def ian_instructor = Instructor.findByStaffId('I1234') ?: new Instructor(staffId: 'I1234', staffname: 'Ian Ibbotson').save();
	def donald_instructor = Instructor.findByStaffId('I2314') ?: new Instructor(staffId: 'I2314', staffname: 'Donald Donaldson').save();
	def patrick_instructor = Instructor.findByStaffId('I3241') ?: new Instructor(staffId: 'I3241', staffname: 'Patrick Hayes').save();

	println("Instructors Created");

	def programing_course = Course.findByCourseID('C5475') ?: new Course(courseID:'C5475',
								courseName:'Programing',
								coursedescription:'Program Computers').save();
	def comp_essen_course = Course.findByCourseID('C8732') ?: new Course(courseID:'C8732',
								courseName:'Computer Essentials',
								coursedescription:'Learn about Computers').save();
	def web_arch_course = Course.findByCourseID('C4353') ?: new Course(courseID:'C4353',
								courseName:'Web Architectures',
								coursedescription:'Learn about web structures').save();

	println("Courses Inserted");

	def monday_am_class = RegClass.findByCourseAndCode(web_arch_course, 'WebArch-Mondays') ?:
		new RegClass(name:'WebArch-Mondays',
			code:'MondayAM',
			instructor:ian_instructor,
			course:web_arch_course).save();
	def monday_pm_class = RegClass.findByCourseAndCode(programing_course, 'Programing-Mondays') ?:
		new RegClass(name:'Programing-Mondays',
			code:'MondayPM',
			instructor:donald_instructor,
			course:programing_course).save();

	def tuesday_am_class = RegClass.findByCourseAndCode(comp_essen_course, 'CompEssen-Tuesdays') ?:
		new RegClass(name:'CompEssen-Tuesdays',
			code:'TuesdayAM',
			instructor:patrick_instructor,
			course:comp_essen_course).save();
	def tuesday_pm_class = RegClass.findByCourseAndCode(web_arch_course, 'WebArch-Tuesdays') ?:
		new RegClass(name:'WebArch-Tuesdays',
			code:'TuesdayPM',
			instructor:ian_instructor,
			course:web_arch_course).save();

	def wednesday_am_class = RegClass.findByCourseAndCode(programing_course, 'Programing-Wednesdays') ?:
		new RegClass(name:'Programing-Wednesdays',
			code:'WednesdayAM',
			instructor:donald_instructor,
			course:programing_course).save();
	def wednesday_pm_class = RegClass.findByCourseAndCode(comp_essen_course, 'CompEssen-Wednesdays') ?:
		new RegClass(name:'CompEssen-Wednesdays',
			code:'WednesdayPM',
			instructor:patrick_instructor,
			course:comp_essen_course).save();

	def thursday_am_class = RegClass.findByCourseAndCode(web_arch_course, 'WebArch-Thursdays') ?:
		new RegClass(name:'WebArch-Thursdays',
			code:'ThursdayAM',
			instructor:ian_instructor,
			course:web_arch_course).save();
	def thursday_pm_class = RegClass.findByCourseAndCode(programing_course, 'Programing-Thursdays') ?:
		new RegClass(name:'Programing-Thursdays',
			code:'ThursdayPM',
			instructor:donald_instructor,
			course:programing_course).save();

	def friday_am_class = RegClass.findByCourseAndCode(comp_essen_course, 'CompEssen-Fridays') ?:
		new RegClass(name:'CompEssen-Fridays',
			code:'FridayAM',
			instructor:patrick_instructor,
			course:comp_essen_course).save();
	def friday_pm_class = RegClass.findByCourseAndCode(web_arch_course, 'WebArch-Fridays') ?:
		new RegClass(name:'WebArch-Fridays',
			code:'FridayPM',
			instructor:ian_instructor,
			course:web_arch_course).save();

	println("Classes Added");

	def student_a = Student.findByStudentNumber('S3425') ?:
					new Student(studentNumber:'S3425',name:'Dave West', notes:'Likes Web Arch').save();
	def student_b = Student.findByStudentNumber('S5675') ?:
					new Student(studentNumber:'S5675',name:'Frank Skinner', notes:'Enjoys Food').save();
	def student_c = Student.findByStudentNumber('S5467') ?:
					new Student(studentNumber:'S5467',name:'Betsy France', notes:'Reguar Toilet Trips').save();
	def student_d = Student.findByStudentNumber('S7854') ?:
					new Student(studentNumber:'S7854',name:'Eddie Eagle', notes:'Allergic To Walls').save();
	def student_e = Student.findByStudentNumber('S8924') ?:
					new Student(studentNumber:'S8924',name:'Francis Drake', notes:'Fan of Battles').save();

	println("Students Implanted");

	def student_a_web_arch = Enrollment.findByStudentAndRegClass(student_a,monday_am_class) ?:
					new Enrollment(student:student_a, regClass:monday_am_class).save();

	def student_b_comp_essen = Enrollment.findByStudentAndRegClass(student_b,tuesday_am_class) ?:
					new Enrollment(student:student_b, regClass:tuesday_am_class).save();

	def student_c_programing = Enrollment.findByStudentAndRegClass(student_c,wednesday_am_class) ?:
					new Enrollment(student:student_c, regClass:wednesday_am_class).save();


	println("Enrollments have been Completed");

	println("Done...");

	    }

    def destroy = {
    }
}
