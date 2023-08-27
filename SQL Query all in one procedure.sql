create database db1234
use db1234

create table employee
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)

create proc sp_employee
@action varchar(50),
@id int=0,
@name varchar(50)=null,
@city varchar(50)=null,
@age int=0
as 
begin
	if(@action='insert')
	begin
	insert into employee(name,city,age)values(@name,@city,@age)
	end
	else if(@action='update')
	begin
	update employee set name=@name,city=@city,age=@age where id=@id
	end
	else if(@action='delete')
	begin
	delete from employee where id=@id
	end
	else if(@action='select')
	begin
	select * from employee
	end
	else if(@action='edit')
	begin
	select * from employee where id=@id
	end

end

select * from employee