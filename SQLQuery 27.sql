create database db271220
use db271220

create table student
(

id int primary key identity,
name varchar(50),
city varchar(50),
age int,
rollno int
)

select * from student