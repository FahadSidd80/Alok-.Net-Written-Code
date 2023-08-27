create database dbbatch11

use dbbatch11

create table registration 
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int,
gender int,
country int
)

create proc sp_registration_insert

@name varchar(50),
@city varchar(50),
@age int,
@gender int,
@country int
as 
begin
insert into registration(name,city,age,gender,country)
values(@name,@city,@age,@gender,@country)
end

create proc sp_reg_select_get
as
begin
select * from registration
end


create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('Canada')

select * from registration


 alter table registration alter column country int
