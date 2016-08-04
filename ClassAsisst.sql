drop table TypeAssignment;
drop table studentCA;

Create table TypeAssignment(
Type varchar(50) primary key
);

insert into TypeAssignment values ('homework');
insert into TypeAssignment values ('quiz');
insert into TypeAssignment values ('test');
insert into TypeAssignment values ('project');



Create table studentCA (
id integer primary key,
Student_Id Number not null,
Assignment_name varchar(500) not null,
Type varchar(50) REFERENCES TypeAssignment (Type),
AssDate Date not null,
Grade Number check(Grade between 0 and 100)
);

create sequence studentCA_id_seq start with 1 increment by 1 nocache;

select * from TypeAssignment;

select * from studentca;
select * from Studentca s order by student_id;