create database student1;
use student1;
create table class1(
id int primary key,
name varchar(40),
roll_no int
);
select * from class1;
insert into class1 values(1, 'sumit', 164);
insert into class1 values(9, 'subh', 164);
insert into class1 values(2, 'kashish', 085);
insert into class1 values(3, 'prince', 116);
select * from class1;