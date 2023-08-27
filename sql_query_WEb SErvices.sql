create database TeacherWebservices

use TeacherWebservices

create table teacher
(
 id int primary key identity,
 name varchar(50),
 city varchar(50),
 age int
)

create proc sp_Teachers_insert

 @name varchar(50),
 @city varchar(50),
 @age int

 as
 begin 
   insert into teacher(name,city,age) values(@name,@city,@age)
 end

 

create proc sp_Teachers_update
@id int,
 @name varchar(50),
 @city varchar(50),
 @age int

 as
 begin 
   update  teacher set name=@name,city=@city,age=@age where id=@id
 end


 create proc sp_teachers_editnew
@id int
 

 as
 begin 
   select * from teacher where id=@id
 end
 
create proc sp_teacher_delete
@id int
as
begin
delete from teacher where id=@id
end


create proc sp_teacher_get
as
begin
select * from teacher
end


