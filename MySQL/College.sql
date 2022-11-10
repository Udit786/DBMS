CREATE DATABASE College;
USE College;
CREATE TABLE courses(
Course_Name varchar(30),
Course_Code varchar(6),
Sem_No int,
Credits int,
Syllabus varchar(100),
Duration int,
Students_enrolled int,
PRIMARY KEY(Course_Code)
);
CREATE TABLE student(
UID bigint,
Full_Name varchar(50),
Mothers_Name varchar(20),
Fathers_Name varchar(20),
Phone_No bigint,
Address varchar(200),
DOB Date,
Age int,
Fees bigint,
Fees_Status varchar(10),
Attendance decimal(5,2),
CGPA decimal(5,2),
Year_of_Graduation int,
Branch varchar(20),
college_emailid varchar(30),
college_password varchar(30),
PRIMARY KEY (UID),
FOREIGN KEY (Branch) REFERENCES Department(Dept_Name)
);
CREATE TABLE department(
Dept_Name varchar(20),
Avg_Package decimal(5,2),
Floor_Occupied int,
SubCommittees varchar(50),
PRIMARY KEY (Dept_Name)
);
CREATE TABLE staff(
Teacher_Code varchar(5),
Full_Name varchar(50),
Mothers_Name varchar(20),
Fathers_Name varchar(20),
Phone_Number bigint,
Address varchar(100),
Age int,
DOB Date,
email varchar(30),
teacher_password varchar(20),
Salary int,
Qualification varchar(20),
Experience int,
Attendance decimal(5,2),
Dept_Name varchar(20),
Course_Code varchar(6),
PRIMARY KEY (Teacher_Code),
FOREIGN KEY (Dept_Name) REFERENCES Department(Dept_Name),
FOREIGN KEY (Course_Code) REFERENCES Courses(Course_Code)
);
CREATE TABLE takes(
UID bigint,
Course_Code varchar(6),
grades decimal(5,2),
FOREIGN KEY (UID) REFERENCES Student(UID),
FOREIGN KEY (Course_Code) REFERENCES Courses(Course_Code)
);
CREATE TABLE admin(
Aname varchar(20),
Teacher_Code varchar(5),
FOREIGN KEY (Teacher_Code) REFERENCES Staff(Teacher_Code)
);
SELECT * FROM Student;
SELECT * FROM Staff;
SELECT * FROM Courses;
SELECT * FROM Department;
INSERT INTO courses VALUES("PSOOP","CS103",2,4,"Java",3, 240);
INSERT INTO courses VALUES("ECL","CS107",1,4,"Integration, Calculus", 3, 440);
INSERT INTO courses VALUES("DS", "CS203", 3, 4, "Data Structures", 4, 300);
INSERT INTO department VALUES("Computer Engineering",15.72,6,"CSI, FACE");
INSERT INTO department VALUES("IT", 12.20, 4, "Coding Club");
INSERT INTO department VALUES("Electronics", 10.4, 5, "ASCES");
INSERT INTO student VALUES(2021300092, "Vineet Parmar", "Falguni", "Jyotindra", 8169343921, "Kandivali", '2003-12-08', 18, 172000, "Paid", 85.67, 9.57, 2025, "Computer Engineering", "vineet.parmar@spit.ac.in", "abcdxyz");
INSERT INTO student VALUES(2021300103, "Omkar Rao", "Sakshee", "Udit", 9876543210, "Jogeshwari", '2003-12-05', 18, 172000, "Paid", 100, 10, 2025, "Computer Engineering", "omkar.rao@spit.ac.in", "abcdxyz");
INSERT INTO student VALUES(2021700022, "Anish Gade", "Deepika", "Onam", 9394586434, "Ulhasnagar", '2003-03-26', 18, 172000, "Not Paid", 75.67, 8.57, 2025, "IT", "anish.gade@spit.ac.in", "abcdxyz");
INSERT INTO staff VALUES("RD", "Rita Das", "ABC", "XYZ", 2983463292, "Mumbai", 40, '1992-08-29', "rita.das@spit.ac.in", "abc123", 1800000, "PhD", 20, 99, "IT", "CS103");
INSERT INTO staff VALUES("PJ", "Prajakta Jadhav", "ABC", "XYZ", 2983463292, "Mumbai", 28, '1992-08-29', "prajakta.jadhav@spit.ac.in", "abc123", 800000, "M.Tech", 5, 94, "Computer Engineering", "CS107");
INSERT INTO staff VALUES("NR", "Natasha Raul", "ABC", "XYZ", 2983463292, "Mumbai", 36, '1992-08-29', "natasha.raul@spit.ac.in", "abc123", 1500000, "PhD", 20, 99, "Computer Engineering", "CS203");
INSERT INTO takesCourse VALUES (2021300092, "CS103");
INSERT INTO takesCourse VALUES (2021300092, "CS107");
INSERT INTO takesCourse VALUES (2021300092, "CS203");
INSERT INTO takesCourse VALUES (2021300103, "CS103");
INSERT INTO takesCourse VALUES (2021300103, "CS107");
INSERT INTO takesCourse VALUES (2021300103, "CS203");
INSERT INTO takesCourse VALUES (2021700022, "CS103");
INSERT INTO takesCourse VALUES (2021700022, "CS107");
INSERT INTO takesCourse VALUES (2021700022, "CS203");
INSERT INTO admin VALUES ("Rita Das", "RD");
