# eRegister

This is my application for the Attendance Applicaiton.

## The Application

Start up the project and you will be greeted with the log in screen.
A user will log in with their ID and use the standard password that all users have been given for the development and testing of the application.

##### Example:
* Instructor Login-I1234,  Password-password
* Student Login-S3425,  Password-password

If an instructor has logged onto the screen, they will have the ability to look at a list of classes, create a register and add a student's registration to a register.
If a student logs on, they will only have the ability to add their registration to a register.

## The Good, The Bad & The Ugly
My take on my project

I feel that my project has gone well, but I have been limited to only my basic knowledge of the MVC framework, and not been able to complete all I wanted to.
I think that the layout it very simple, and the display is easy to look at and simple to follow.

Unfortunatly, I wasn't able to add a session, so the system automatically inputs the students name into the register. As it stands, the student can select any student to register, which they shouldn't.

I wanted it to be able so that after the user logs on, the application determines what privilages are availible to them e.g. A student would only be able to sign onto a class, where as a instructor would be able to edit, delete and add registrations.
As it stands, a student has those capabilities also, which they shouldn't. The only way I can think of solving this would be through a hidden function which would hide that action from the student, but grant it for the instructor.

This would be implemented in another action that I've not been able to add, where a session is created e.g. an action is added in the session controller which allows the instructor these abilities, but not the student.

##How to Clone
https://github.com/b1020875/eRegister

1.  Make sure you’re in the directory: student@WebArch:~/eRegister$
2.	git clone git@github.com:b1020875/eRegister.git
3.	If prompted for a password, it is “password”

## How to Use

The application can be found at: https://github.com/b1020875/eRegister

The user logs in:
* Instructor Login-I1234,  Password-password
* Student Login-S3425,  Password-password

(These are only selected log ins for that type of member, the others work just the same)

The student will select 'Register for Class' From here, they'll select the class & who they are. The timestamp is automatic. They'll cliick create and will be added to that register.

The instructor will can modify a register, registration and class.


