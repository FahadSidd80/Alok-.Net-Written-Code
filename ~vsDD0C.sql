create database dbbatchs11
use dbbatchs11

create table Registration
(
id int primary key identity,
name varchar(50),
age int,
gender int,
country int
)

create proc sp_Registration_insert
(
@name varchar(50),
@age int,
@gender int,
@country int
)

as
begin
insert into Registration(name,age,gender,country)values(@name,@age,@gender,@country)
end

alter proc sp_reg_select
as
begin
select * from Registration join tblcountry on Registration.country=tblcountry.cid
end


create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India')

insert into tblcountry(cname)values('Pakistan')

insert into tblcountry(cname)values('canada')


select * from Registration

create proc sp_tblcountry_get
as
begin
select * from tblcountry
end


alter proc sp_reg_delete
@id int
as
begin
delete from Registration where id=@id
end

alter proc sp_reg_edit
@id int
as
begin
select * from Registration where id=@id
end


create proc sp_Registration_update
(
@id int,
@name varchar(50),
@age int,
@gender int,
@country int
)

as
begin
update Registration set name=@name,age=@age,gender=@gender,country=@country where id=@id
end


