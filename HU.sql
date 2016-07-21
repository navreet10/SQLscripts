
drop table grade;
drop table crn;
drop table course;
drop table classroom;
drop table student;
drop table instructor;
drop table major;
drop table department;
drop table huuser;

drop sequence department_id_seq;
drop sequence major_id_seq;
drop sequence course_id_seq;
drop sequence classroom_id_seq;
drop sequence crn_id_seq;
drop sequence grade_id_seq;
drop sequence student_id_seq;
drop sequence instructor_id_seq;

create table huuser (
username varchar2(50) primary key,
firstname varchar2(50) not null,
lastname varchar2(50) not null,
email varchar2(50) not null,
pwd varchar2(200) not null
);

insert into huuser values ('Navreet', 'Navreet', 'Kaur', 'study.javaclass@gmail.com', 'abc123');
insert into huuser values ('Dave', 'Dave', 'Wolf', 'study.javaclass@gmail.com', 'abc123');

create table department (
deptid integer primary key, 
dept varchar2(50) unique not null
);

create sequence  department_id_seq start with 1 increment by 1 nocache;

insert into department values(department_id_seq.nextval,'CS');

create table major (
majorid integer primary key,
major varchar2(50) unique not null,
dept varchar2(50) not null,
CONSTRAINT fk_major_dept FOREIGN KEY (dept) references department(dept)
);

create sequence  major_id_seq start with 1 increment by 1 nocache;

insert into major values(major_id_seq.nextval,'Security', 'CS');

create table student (
studentid integer primary key,
username varchar2(50) unique not null,
major varchar2(50) not null,
yearOfEntry  integer not null,
CONSTRAINT fk_student_username FOREIGN KEY (username) references huuser(username),
CONSTRAINT fk_student_major FOREIGN KEY (major) references major(major)
);

create sequence student_id_seq start with 1 increment by 1 nocache;

insert into student values(student_id_seq.nextval,'Navreet', 'Security', '2016');


create table instructor (
instructorid integer primary key,
username varchar2(50) unique not null,
dept varchar2(50) not null,
officeNum  integer not null,
CONSTRAINT fk_instructor_username FOREIGN KEY (username) references huuser(username),
CONSTRAINT fk_instructor_dept FOREIGN KEY (dept) references department(dept)
);

create sequence instructor_id_seq start with 1 increment by 1 nocache;

insert into instructor values(instructor_id_seq.nextval,'Dave', 'CS', '2012012014');

create table course (
courseid integer primary key,
coursedesc varchar2(50) not null,
name varchar2(50) unique not null,
credits  integer not null,
major varchar2(50) not null,
CONSTRAINT fk_course_major FOREIGN KEY (major) references major(major)
);

create sequence  course_id_seq start with 1 increment by 1 nocache;

insert into course values (course_id_seq.nextval,'Algorithms and approaches', 'Algorithm Design', 3, 'Security');

create table classroom (
classroomid integer primary key,
roomNum varchar2(50) not null,
buildingname varchar2(50) not null,
maxCapacity integer not null  
);

create sequence classroom_id_seq start with 1 increment by 1 nocache;

insert into classroom values(classroom_id_seq.nextval, 200, 'RomeHall',20);



create table crn (
crnid integer primary key,
classroomid integer not null,
courseid integer not null,
days varchar2(50) not null,
timeOfClass varchar2(50) not null,
year integer not null,
semester integer not null,
instructorid integer,
CONSTRAINT fk_class_instructor FOREIGN KEY (instructorid) references instructor(instructorid),
CONSTRAINT fk_crn_username FOREIGN KEY (classroomid) references classroom(classroomid),
CONSTRAINT fk_crn_dept FOREIGN KEY (courseid) references course(courseid)
);



create sequence  crn_id_seq start with 1 increment by 1 nocache;

insert into crn values(crn_id_seq.nextval, 1,1,12,13,2016,1,1);


create table grade (
id integer primary key,
studentid integer,
crnid integer,
grade Varchar2(2),
CONSTRAINT fk_grades_instructor FOREIGN KEY (studentid) references student(studentid),
CONSTRAINT fk_grades_crnid FOREIGN KEY (crnid) references crn(crnid)
);

create sequence  grade_id_seq start with 1 increment by 1 nocache;

insert into grade values(grade_id_seq.nextval, 1,1,'NA');

commit;

