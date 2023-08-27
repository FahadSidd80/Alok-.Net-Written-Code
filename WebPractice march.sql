create database dbPracticeNet

use dbpracticeNet

create table Employee
(
empid int primary key identity,
name varchar(50),
age int,
gender int,
country int,
state int,
city int,
mobileno bigint,
email varchar,
confirmemail varchar(50),
password varchar(50),
confirmpassword varchar(50)
)

alter table Employee  alter column email varchar(50)

select * from Employee

alter proc sp_Employee
@action int=0,
@empid int=0,
@name varchar(50)=null,
@age int=0,
@gender int=0,
@country int=0,
@state int=0,
@city int=0,
@mobileno bigint=0,
@email varchar(50)=null,
@confirmemail varchar(50)=null,
@password varchar(50)=null,
@confirmpassword varchar(50)=null

as
begin
	if(@action='insert')
	begin
	insert into Employee(name,age,gender,country,state,city,mobileno,email,confirmemail,password,confirmpassword)values(@name,@age,@gender,@country,@state,@city,@mobileno,@email,@confirmemail,@password,@confirmpassword)
	end
	else if(@action='delete')
	begin
	delete from Employee where empid=@empid
	end
	else if(@action='Update')
	begin
	update Employee set name=@name,age=@age,gender=@gender,country=@country,state=@state,city=@city,mobileno=@mobileno,email=@email,confirmemail=@confirmemail,password=@password,confirmpassword=@confirmpassword
	where empid=@empid
	end
	else if(@action='select')
	begin
	select * from Employee
	end
	else if(@action='edit')
	begin
	select * from Employee where empid=@empid
	end

end

create table gender
(
gid int primary key identity,
gname varchar(50)
)

insert into gender(gname)values('Male')
insert into gender(gname)values('Female')
insert into gender(gname)values('Other')


alter proc sp_gender
@action int=0,
@gid int=0,
@gname varchar(50)=null
as
begin 
	if(@action='insert')
	begin
	insert into gender(gname)values('@gname')
	end
	else if(@action='select')
	begin
	select * from gender 
	end
end

create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('Canada')
insert into tblcountry(cname)values('USA')


alter proc sp_tblcountry
@action int=0,
@cid int=0,
@cname varchar(50)=null

as
begin
if(@action='insert')

begin
insert into tblcountry(cname)values(@cname)
end

else if(@action='select')
begin
select * from tblcountry
end

end




create table tblstate
(
cid int,
sid int primary key identity,
sname varchar(50)
)

insert into tblstate(cid,sname)values('1','Uttar Pradesh')
insert into tblstate(cid,sname)values('1','Bihar')
insert into tblstate(cid,sname)values('2','Sindh')
insert into tblstate(cid,sname)values('2','Baloochistaan')
					 
insert into tblstate(cid,sname)values('3','Ontario')
insert into tblstate(cid,sname)values('3','toronto')
insert into tblstate(cid,sname)values('4','Washinghton')
insert into tblstate(cid,sname)values('4','New York')


create proc sp_tblstate
@action int=0,
@sid int=0,
@sname varchar(50)=null

as
begin
if(@action='insert')

begin
insert into tblstate(sname)values(@sname)
end

else if(@action='select')
begin
select * from tblstate
end

end



create table tblcity
(
sid int,
ctid int primary key identity,
ctname varchar(50)
)

insert into tblcity(sid,ctname)values('1','Kanpur')
insert into tblcity(sid,ctname)values('1','Lucknow')
insert into tblcity(sid,ctname)values('2','Patna')
insert into tblcity(sid,ctname)values('2','champaran')
			
insert into tblcity(sid,ctname)values('3','peshawar')
insert into tblcity(sid,ctname)values('3','Lahore')
insert into tblcity(sid,ctname)values('4','Hyderabad')
insert into tblcity(sid,ctname)values('4','Rawalpindi')
			   				   	
insert into tblcity(sid,ctname)values('5','Salt Bridge')
insert into tblcity(sid,ctname)values('5','Jopkins')
insert into tblcity(sid,ctname)values('6','Great lakes')
insert into tblcity(sid,ctname)values('6','Ponds lew')
					
insert into tblcity(sid,ctname)values('7','Silicon Valley')
insert into tblcity(sid,ctname)values('7','George Pool')
insert into tblcity(sid,ctname)values('8','Atlanta')
insert into tblcity(sid,ctname)values('8','Capstone')


create proc sp_tblcity
@action int=0,
@sid int=0,
@ctid int=0,
@ctname varchar(50)=null

as
begin
if(@action='insert')

begin
insert into tblcity(ctname)values(@ctname)
end

else if(@action='select')
begin
select * from tblcity
end

end










