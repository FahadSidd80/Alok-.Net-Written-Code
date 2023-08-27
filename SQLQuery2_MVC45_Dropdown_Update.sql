create database MVC45_Dropdown_Update

use MVC45_Dropdown_Update

alter table student add id int primary key identity
alter table student drop column id
create table Student
(
name varchar(50),
city varchar(50),
age int,
country int,
state int,
gender int
)

alter Proc sp_Student_insert

@name varchar(50),
@city varchar(50),
@age int,
@country int,
@state int,
@gender int
 as 
 begin 
 insert into student(name,city,age,country,state,gender)values(@name,@city,@age,@country,@state,@gender)
 end


create Proc sp_Student_update
@id int,
@name varchar(50),
@city varchar(50),
@age int,
@country int,
@state int,
@gender int
 as 
 begin 
 update student set name=@name,city=@city,age=@age,country=@country,state=@state,gender=@gender where id=@id
 end

 create proc sp_student_Delete
 @id int
 as 
 begin
 delete from student where id=@id
 end


 
 create proc sp_student_Edit
 @id int
 as 
 begin
 select * from student where id=@id
 end


 alter proc sp_student_get

 as 
 begin
 select * from student
 join tblcountry on student.country=tblcountry.cid
 join tblstate on student.state=tblstate.sid
 end




 create table tblcountry
 (
 cid int primary key identity,
 cname varchar(50)
 )

create proc sp_tblcountry_get
 
as
begin
select * from tblcountry
end

insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('USA')


 create table tblstate
 (
 cid int,
 sid int primary key identity,
 sname varchar(50)
 )

create proc sp_tblstate_get
 
as
begin
select * from tblstate
end

insert into tblstate(cid,sname)values(1,'Uttar Pradesh')
insert into tblstate(cid,sname)values(1,'Bihar')
insert into tblstate(cid,sname)values(1,'Maharastra')
insert into tblstate(cid,sname)values(2,'Sindh')
insert into tblstate(cid,sname)values(2,'khaiyber')
insert into tblstate(cid,sname)values(2,'Balooch')
insert into tblstate(cid,sname)values(3,'Texas')
insert into tblstate(cid,sname)values(3,'California')
insert into tblstate(cid,sname)values(3,'Manchester')
