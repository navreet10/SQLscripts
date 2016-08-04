drop table Subscriber;
drop table Rating;
drop table Restaurant;


Create table Subscriber(
id integer primary key,
name varchar2(20) not null,
email varchar2(30) not null,
zip varchar2(10) not null,
url varchar2 (100) not null,
password varchar2(10) not null
);


Create table Restaurant(
id integer primary key,
name varchar2(20) not null,
description varchar2(100) not null,
address varchar2(100) not null,
zip varchar2(10) not null
);

Create table Rating(
id integer primary key,
Rating integer not null,
review varchar2(500) not null,
subId integer,
restId integer,
dateRate date,
CONSTRAINT fk_subId FOREIGN KEY (subId) references Subscriber(id),
CONSTRAINT fk_restId FOREIGN KEY (restId) references Restaurant(id)
);


drop SEQUENCE Subscriber_id_seq;
drop SEQUENCE Restaurant_id_seq;
drop SEQUENCE Rating_id_seq;


create sequence Subscriber_id_seq start with 1 increment by 1 nocache;
create sequence Restaurant_id_seq start with 1 increment by 1 nocache;
create sequence Rating_id_seq start with 1 increment by 1 nocache;


commit;

select * from subscriber;
select * from Restaurant;
select * from rating;

SELECT *
FROM
  (SELECT *
  FROM restaurant
  WHERE restid IN
    (SELECT restid, AVG(rating) FROM rating GROUP BY restid ORDER BY restid
    ) 
  );

insert into RESTAURANT values (Restaurant_id_seq.nextval,'Cheesecake Factory', 'Italian and Dessert', 'Arundell Mall', '45632');
insert into RESTAURANT values (Restaurant_id_seq.nextval,'Nando Peri Peri', 'Portoguese', 'Columbia Mall', '45678');
insert into RESTAURANT values (Restaurant_id_seq.nextval,'Paradise Biriyani', 'South Indian', 'Liberty rd', '45698');
insert into RESTAURANT values (Restaurant_id_seq.nextval,'Taj palace', 'Indian', 'Resistertown rd', '41121');
insert into RESTAURANT values (Restaurant_id_seq.nextval,'Thai High', 'Thai', 'Arundell Mall', '58976');

