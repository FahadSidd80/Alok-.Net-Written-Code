create database MVC1stEmployee

use  MVC1stEmployee

create table Employee
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)


create proc sp_Employee_insert

@name varchar(50),
@city varchar(50),
@age int

 as
 begin 
 insert into employee(name,city,age)values(@name,@city,@age)
 end

 
create proc sp_Employee_update
@id int,
@name varchar(50),
@city varchar(50),
@age int

 as
 begin 
 update employee set name=@name,city=@city,age=@age where id=@id
 end

 create proc sp_Employee_delete
@id int


 as
 begin 
 delete from employee where id=@id
 end


  create proc sp_Employee_edit
@id int


 as
 begin 
 select * from employee where id=@id
 end


 
 create proc sp_Employee_get

 as
 begin 
 select * from employee 
 end