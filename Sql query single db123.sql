create database db123

use db123

create table student
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int,
)

select * from student

------- procedure --------------
create proc sp_insert_student
@name varchar(50),
@city varchar(50),
@age int
as 
begin
insert into student(name,city,age)values(@name,@city,@age)
end


create proc sp_select_student
as
begin
select * from student 
end


create proc sp_delete_student
@id int
as
begin
delete from student where id=@id
end


create proc sp_update_student
@id int,
@name varchar(50),
@city varchar(50),
@age int
as
begin
update student set name=@name,city=@city,age=@age where id=@id
end

create proc sp_edit_select_student
@id int
as
begin
select * from student where id=@id
end
