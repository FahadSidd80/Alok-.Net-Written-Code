create database dbentity 
 use dbentity

 create table employee
 (
 id int primary key identity,
 name varchar(50),
 address varchar(50),
 age int

 )

  create proc sp_employee_insert
 
 
 @name varchar(50),
 @address varchar(50),
 @age int

 as
 begin 
  insert into employee(name,address,age)values(@name,@address,@age)
 end


 
 create proc sp_employee_update
 
 @id int,
@name varchar(50),
 @address varchar(50),
 @age int

 as
 begin 
  update employee set name=@name,address=@address,age=@age where id=@id
 end


  create proc sp_employee_delete
 
 @id int


 as
 begin 
 delete from employee where id=@id
 end
 

 
  create proc sp_employee_edit
 
 @id int


 as
 begin 
 select * from employee where id=@id
 end

  
 create proc sp_employee_get

 as
 begin 
 select * from employee 
 end


