package uk.ac.shu.webarch.eregister

class RegistrationEntry {

Student student

long timestamp

static constraints = {
	timestamp(nullable:false, blank:false);
	}

static mapping = {
    table 'student_register_entry'
    student column: 'student_fk'
  }
}
