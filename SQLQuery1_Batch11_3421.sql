create database  Batch11_3421
use Batch11_3421
select * from Emp

alter table Emp add country int,state int, gender int

create table Emp
(
empid int primary key identity,
name varchar(50),
adderss varchar(50),
age int,
country int,
state int,
gender int
)
alter table Emp drop column adderss
alter table Emp add address varchar(50)


------------------------------------------------------------------------------------


create table tbl_country
(
cid int primary key identity,
cname varchar(50)
)
insert into tbl_country(cname)values('india')
insert into tbl_country(cname)values('pakistan')
insert into tbl_country(cname)values('usa')

create proc usp_country_get
as
begin
select * from tbl_country
end

create table tbl_State
(
sid int primary key identity,
cid int,
sname varchar(50)
)

insert into tbl_State(cid,sname)values(1,'up')
insert into tbl_State(cid,sname)values(1,'bihar')
insert into tbl_State(cid,sname)values(2,'Khayber')
insert into tbl_State(cid,sname)values(2,'Sindh')
insert into tbl_State(cid,sname)values(3,'Los vegas')
insert into tbl_State(cid,sname)values(3,'California')
insert into tbl_State(cid,sname)values(1,'Delhi')
insert into tbl_State(cid,sname)values(1,'Maharashtra')
insert into tbl_State(cid,sname)values(3,'Texas')


create proc usp_state_get
@cid int
as
begin
select * from tbl_State where cid=@cid
end

-------------------------
sp_helptext usp_emp_get
create proc usp_emp_insert
@name varchar(50), 
@address varchar(50),
@age int,
@country int,
@state int,
@gender int
as
begin
insert into Emp(name,address,age,country,state,gender)
values(@name,@address,@age,@country,@state,@gender)
end

create proc usp_emp_update
@empid int,
@name varchar(50),
@address varchar(50),
@age int,
@country int,
@state int,
@gender int
as
begin
update Emp set Name=@name,Address=@address,country=@country,state=@state,gender=@gender,
Age=@age where EmpID=@empid
end

create proc usp_emp_get
as
begin
select * from Emp 
join tbl_country on Emp.country=tbl_country.cid
join tbl_state on Emp.state=tbl_state.sid
end


create proc usp_emp_delete
@empid int
as
begin
 delete from Emp where empid=@empid
end

create proc usp_emp_edit
@empid int
as
begin
 select * from Emp where empid=@empid
end