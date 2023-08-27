create database db2991220
use db2991220

create table employee
(

id int primary key identity,
name varchar(50),
city varchar(50),
age int
)

select * from employee

create procedure sp_insert_employee
@a varchar(50),
@b varchar(50),
@c int
as
begin
insert into employee(name,city,age)
values(@a,@b,@c)
end

create proc sp_delete_employee
@a int
as 
begin
delete  from employee where id=@a
end

create proc sp_select_employee
as
begin
select * from employee
end

create proc sp_edit_employee
@id int
as
begin
select * from employee where id=@id
end

create procedure sp_update_employee
@id int,
@name varchar(50),
@city varchar(50),
@age int
as
begin
update employee set name=@name,city=@city,age=@age
where id=@id
end