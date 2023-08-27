create database dbproc

use dbproc

create table employee
(

id int primary key identity,
name varchar(50),
gender varchar(50),
course varchar(50)
)


alter proc sp_insert_employee
@name varchar(50),
@gender varchar(50),
@course varchar(50)
as
begin
insert into employee(name,gender,course)values(@name,@gender,@course)
end

select * from employee

create proc sp_select_employee
as
begin
select * from employee
end

create proc sp_delete_employee
@id int
as
begin
delete  from employee where id=@id
end

alter proc sp_update_employee
@id int,
@name varchar(50),
@gender varchar(50),
@course varchar(50)
as
begin
update employee set name=@name,gender=@gender,course=@course where id=@id
end


create proc sp_edit_employee
@id int
as
begin
select * from employee where id=@id
end


select * from employee