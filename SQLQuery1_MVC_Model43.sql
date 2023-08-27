create database MVC_Model43

use MVC_Model43


create table Registration
(
id int primary key identity,
name varchar(50),
email varchar(50),
password varchar(50),
age int,
salary int,
)




create proc sp_Registration_insert
@name varchar(50),
@email varchar(50),
@password varchar(50),
@age int,
@salary int

as
begin 
 insert into Registration(name,email,password,age,salary)values(@name,@email,@password,@age,@salary)
end


create proc sp_Registration_update
@id int,
@name varchar(50),
@email varchar(50),
@password varchar(50),
@age int,
@salary int

as
begin 
 update Registration set name=@name,email=@email,password=@password,age=@age,salary=@salary  where id=@id
end




create proc sp_Registration_delete
@id int


as
begin 
 delete  from Registration where id=@id
 end


 create proc sp_Registration_edit
@id int


as
begin 
 select * from Registration where id=@id
 end



create proc sp_Registration_select

as
begin 
 select * from Registration
end
