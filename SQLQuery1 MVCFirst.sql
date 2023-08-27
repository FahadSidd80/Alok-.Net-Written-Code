create database MVCFirst

use   MVCFirst

create table Employee
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)


alter procedure sp_Employee_insert

@name varchar(50),
@city varchar(50),
@age int

as
begin 
insert into Employee(name, city,age)values(@name,@city,@age)
end


alter procedure sp_Employee_update
@id int,
@name varchar(50),
@city varchar(50),
@age int

as
begin 
update Employee set name=@name,city=@city,age=@age where id=@id
end


create procedure sp_Employee_edit
@id int

as
begin 
select * from Employee where id=@id
end



create procedure sp_Employee_delete
@id int

as
begin 
delete from Employee where id=@id
end



create procedure sp_Employee_select

as
begin 
select * from Employee 
end