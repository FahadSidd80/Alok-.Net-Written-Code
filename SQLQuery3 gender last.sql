create database dbgender

use dbgender

create table registration
(
id int primary key identity,
name varchar(50),
gender int
)

alter proc sp_reg_insert
@name varchar(50),
@gender int
as
begin
insert into registration(name,gender)values(@name,@gender)
end

create proc sp_reg_select
as
begin
select * from registration
end


create table gender
(
gid int primary key identity,
gname varchar(50)
)


 insert into gender(gname)values('Male')
 insert into gender(gname)values('Female')
 insert into gender(gname)values('other')

  create proc sp_gender_get
  as
  begin
  select * from gender
  end

  select * from registration

