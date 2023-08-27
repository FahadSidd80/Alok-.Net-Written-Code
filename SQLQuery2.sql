create database dbjoin2

use dbjoin2


create table country
(
id int primary key identity,
name varchar(50)
)


insert into country(name)values('India')
insert into country(name)values('Pakistan')
insert into country(name)values('USA')

select * from country


create proc sp_country_select
as
begin
select * from  country
end




-----------------------------------------------------------------------------------------------------------------

create table student
(
id int primary key identity,
name varchar(50),
country int
)


create proc sp_student_insert
@id int,
@name varchar(50),
@country int
as
begin
insert into student(name,country)values(@name,@country) 
end

