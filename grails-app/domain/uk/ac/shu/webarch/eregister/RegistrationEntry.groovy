package uk.ac.shu.webarch.eregister

class RegistrationEntry {

Student student
Date timestamp = new Date()
RegistrationSheet regSheet

static constraints = {
	}

static mapping = {
    table 'student_register_entry'
    student column: 'student_fk'
  }
}
