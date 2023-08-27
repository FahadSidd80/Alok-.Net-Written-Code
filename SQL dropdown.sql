create database dbdropdown
use dbdropdown

create table Registration
(
id int primary key identity,
name varchar(50),
gender varchar(50),
country varchar(50)
)

create proc sp_Registration
@action varchar(50)=null,
@id int=0,
@name varchar(50)=null,
@gender varchar(50)=null,
@country varchar(50)=null
as
begin
	if(@action='INSERT')
		begin
			insert into Registration(name,gender,country)values(@name,@gender,@country)
		end
	else if(@action='DISPLAY')
		begin
			select * from Registration
		end
end


select * from Registration


----------------------------------------------------------
truncate table Registration ----table ko khaali karne ke liye-------------------

