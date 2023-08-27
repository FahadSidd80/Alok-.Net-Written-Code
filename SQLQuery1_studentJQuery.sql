create database studentJQuery

use studentJQuery

create table student
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)




create proc sp_student_insert

@name varchar(50),
@city varchar(50),
@age int
 as
 begin
  insert into student(name,city,age)values(@name,@city,@age)
 end



create proc sp_student_update

@id int,
@name varchar(50),
@city varchar(50),
@age int
 as
 begin
  update  student set name=@name,city=@city,age=@age where id=@id
 end



 create proc sp_student_delete
 @id int
 as
 begin 
 delete from student where id=@id
 end



 create proc sp_student_get  
  
 as  
 begin   
 select * from student  
 end


 
 create proc sp_student_edit  
 @id int 
 as  
 begin   
 select * from student   where id=@id
 end
