package uk.ac.shu.webarch.eregister

class Instructor {

String staffname
String staffID

set calsses

static hasMany = [classes:RegClass]

static mappedBy = [classes:'instructor']

static constraints = {
    name(nullable:false, blank:false,maxSize:256);
    staffId(nullable:false, blank:false,maxSize:20);
    }
}
