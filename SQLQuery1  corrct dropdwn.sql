create database dbdrop

use dbdrop

create table student
(
id int primary key identity,
name varchar(50),
gender varchar(50),
country varchar(50)
)


select * from student

create proc sp_student_insert
@name varchar(50),
@gender varchar(50),
@country varchar(50)
as
begin
insert into student(name,gender,country)values(@name,@gender,@country)
end

create proc sp_student_get
as
begin 
select * from student
end

create proc sp_student_delete
@id int
as
begin 
delete from student where id=@id
end



create proc sp_student_edit
@id int
as
begin 
select *  from student where id=@id
end


create proc sp_student_update
@id int,
@name varchar(50),
@gender varchar(50),
@country varchar(50)
as
begin
update student set name=@name, gender=@gender, country=@country where id=@id
end