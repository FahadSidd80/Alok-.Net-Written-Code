create database Jquery
use Jquery

create table Student
(
id int primary key identity ,
name varchar(50),
address varchar(50),
age int
)

create proc sp_Student_insert

@name varchar(50),
@address varchar(50),
@age int
 as 
 begin 
  insert into student(name,address,age) values(@name,@address,@age)
 end


 select * from student