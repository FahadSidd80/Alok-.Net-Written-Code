create database JQueryPractice1stlctre

 use JQueryPractice1stlctre

 create table Employee
 (
  id int primary key identity,
  name varchar(50),
  address varchar(50),
  age int
 )

 create proc sp_Employee_insert
 
  @name varchar(50),
  @address varchar(50),
  @age int
  as
   begin
   insert into employee(name,address,age)values(@name,@address,@age)
   end

   select * from employee