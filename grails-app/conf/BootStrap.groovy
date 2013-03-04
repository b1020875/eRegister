import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("BootStrap::init");

	def ian_instructor = Instructor.findByStaffId('1234a') ?: new Instructor(staffId: '1234a', staffname: 'Ian Ibbotson').save();
	def donald_instructor = Instructor.findByStaffId('2314a') ?: new Instructor(staffId: '2314a', staffname: 'Donald Donaldson').save();
	def patrick_instructor = Instructor.findByStaffId('3241a') ?: new Instructor(staffId: '3241a', staffname: 'Patrick Hayes').save();


	    }

    def destroy = {
    }
}
