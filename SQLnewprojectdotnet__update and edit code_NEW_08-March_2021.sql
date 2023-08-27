create database newprojectstudent

use newprojectstudent

create table student
(
stid int primary key identity,
name varchar(50),
age int,
gender int,
country int,
state int,
city int,
email varchar(50),
password varchar(50),
confirmpassword varchar(50)
)

alter proc sp_student_insert

@name varchar(50),
@age int,
@gender int,
@country int,
@state int,
@city int,
@email varchar(50),
@password varchar(50),
@confirmpassword varchar(50)

as
begin
insert into student(name,age,gender,country,state,city,email,password,confirmpassword)values(@name,@age,@gender,@country,@state,@city,@email,@password,@confirmpassword)
end


alter proc sp_student_select
as
begin
select *,(UPPER(LEFT(name,1))+ SUBSTRING(name,2,50)) as CapitalName, row_number()over(order by stid) as SrNo  from student 
join tblgender on student.gender=tblgender.gid
join tblcountry on student.country=tblcountry.cid
join tblstate on student.state=tblstate.sid
join tblcity on student.city=tblcity.ctid

end


create proc sp_student_delete
@stid int
as
begin
delete from student where stid=@stid
end

alter proc sp_student_update
@stid int,
@name varchar(50),
@age int,
@gender int,
@country int,
@state int,
@city int,
@email varchar(50),
@password varchar(50),
@confirmpassword varchar(50)
as
begin
update student set name=@name,age=@age,gender=@gender,country=@country,state=@state,city=@city,email=@email,password=@password,confirmpassword=@confirmpassword where stid=@stid
end



alter proc sp_student_edit
@stid int
as
begin
select * from student where stid=@stid
end



create table tblgender
(
gid int primary key identity,
gname varchar(50),
)

insert into tblgender(gname)values('Male')
insert into tblgender(gname)values('Female')
insert into tblgender(gname)values('Other')

create proc sp_tblgender_select
as
begin
select * from tblgender
end

select * from tblgender





create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('Bihar')

update  tblcountry set cname='USA' where cid=3



select * from tblcountry

create proc sp_tblcountry_select
as
begin
select * from tblcountry
end




create table tblstate
(
cid int,
sid int primary key identity,
sname varchar(50)
)
select * from student
truncate table student

insert into tblstate(cid,sname)values(1,'Uttar Pradesh')
insert into tblstate(cid,sname)values(1,'Bihar')
insert into tblstate(cid,sname)values(2,'sindh')
insert into tblstate(cid,sname)values(2,'Lahore')
insert into tblstate(cid,sname)values(3,'Washington')
insert into tblstate(cid,sname)values(3,'Atlanta')

select * from tblstate


create proc sp_tblstate_select
@countryid int
as
begin 
select * from tblstate where cid=@countryid
end





create table tblcity
(
sid int,
ctid int primary key identity,
ctname varchar(50)
)

 select * from tblcity

insert into tblcity(sid,ctname)values(1,'Kanpur')
insert into tblcity(sid,ctname)values(1,'Lucknow')
insert into tblcity(sid,ctname)values(2,'Patna')
insert into tblcity(sid,ctname)values(2,'Champaran')
insert into tblcity(sid,ctname)values(3,'Hyderabad')
insert into tblcity(sid,ctname)values(3,'Lahore')
insert into tblcity(sid,ctname)values(4,'Quetta')
insert into tblcity(sid,ctname)values(4,'Peshawar')
insert into tblcity(sid,ctname)values(5,'New York')
insert into tblcity(sid,ctname)values(5,'Texas')
insert into tblcity(sid,ctname)values(6,'Silicon valley')
insert into tblcity(sid,ctname)values(6,'Tornado')

select * from tblcity


create proc sp_tblcity_select
@cityid int
as
begin 
select * from tblcity where sid=@cityid
end


select * from tblstate

select *,('std'+convert(varchar(50),stid))as Studnt_id from student

select ('Emp'+convert(varchar(50),stid))as stid,name,age,gender,country,state,city,email,password,confirmpassword from student



select * from student

select  stid,name,age,gender,country,state,city,email,password,confirmpassword,row_number()over(order by stid) as SerialNumber
from student

select  stid,UPPER(LEFT(name,1))+ SUBSTRING(name,2,50) as Name,age,gender,country,state,city,email,password,confirmpassword,row_number()over(order by stid) as SerialNumber
from student


select * from student
insert into student(name,age,gender,country,state,city,email,password,confirmpassword) values('fahad','22','1','1','2','1','fahah@gmail.com','Fahad','Fahad')


select upper(name) from  student

select lower(name) from  student
select left(name,3) from student

select right(name,2) from student



                                                              
create table tblemployee
(
empid int primary key identity,
name varchar(50),
age int,
img varchar(100)
)


                                                              
alter proc sp_tblemployee
@action varchar(50)=null,
@empid int=0,
@name varchar(50)=null,
@age int=0,
@img varchar(100)=null
as
begin
	if(@action='insert')
		begin
			insert into tblemployee(name,age,img)values(@name,@age,@img)
		end
	else if(@action='select')
		begin
		select * from tblemployee
		end
	else if(@action='Edit')
		begin
		select * from tblemployee where empid=@empid
		end
	else if(@action='Update')
		begin
		update tblemployee set name=@name,age=@age,img=@img where empid=@empid
		end
	else if(@action='Delete')
		begin
		delete from tblemployee where empid=@empid
		end
end


select * from tblemployee

delete from tblemployee where empid=1


truncate table tblemployee


--drop table Registration;

create table userregistration
(
uid int primary key identity,
name varchar(50),
email varchar(50),
password varchar(50),
gender int,
hobbies varchar(50)
)

alter table userregistration add resume varchar(100)


alter proc sp_userreg_insert

@name varchar(50),
@email varchar(50),
@password varchar(50),
@gender int,
@hobbies varchar(50),
@resume varchar(100)

as
begin

insert into userregistration(name,email,password,gender,hobbies,resume)values(@name,@email,@password,@gender,@hobbies,@resume)
end


select * from userregistration

create proc sp_userregistration_get
as
begin
select *, row_number()over(order by uid) as SrNo from userregistration 
end

create proc sp_userregistration_delete
@uid int
as
begin
delete from userregistration where uid=@uid
end



create proc sp_userreg_edit
@id int
as
begin
select * from UserRegistration where uid=@id
end


create proc sp_userreg_update
@id int,
@name varchar(50),
@email varchar(50),
@password varchar(50),
@gender int,
@hobbies varchar(100),
@resume varchar(100)
as
begin
update userregistration set name=@name,email=@email,password=@password,gender=@gender,hobbies=@hobbies,resume=@resume   where uid=@id
end





