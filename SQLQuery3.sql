create database KNICE123
use KNICE123

create table student
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)

insert into student(name,city,age)values('fahad','sultanpur',21)
select*from student
update student set name='almas',city='delhi',age=25 where name='chandan' id=3