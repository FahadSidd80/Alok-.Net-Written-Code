create database  myproject
use myproject

create table tblregistration
(
regid int primary key identity,
name varchar(50),
email varchar(50),
password varchar(20),
inserted_date date,
status int default 0
)

create proc sp_registration
@action varchar(20)=null,
@regid int=0,
@name varchar(50)=null,
@email varchar(50)=null,
@password varchar(20)=null
as
begin
	if(@action='insert')
	begin
	insert into tblregistration(name,email,password,inserted_date)values(@name,@email,@password,getdate())
	end
	else if(@action='select')
	begin
	select *from tblregistration where status=0
	end
	else if (@action='edit')
	begin
	select *from tblregistration where regid=@regid
	end
	else if(@action='update')
	begin
	update tblregistration set name=@name,email=@email,password=@password where regid=@regid
	end
	else if(@action='delete')
	begin
	update tblregistration set status=1 where regid=@regid
	end

end

select GETDATE()

select * from tblregistration