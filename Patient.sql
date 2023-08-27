create database Patient

 use patient

 create table patient
 (
 id int primary key identity,
 name varchar(50),
 adderss varchar(50),
 age  int

 )
 alter


 create proc sp_patient_insert
 
 @name varchar(50),
 @adderss varchar(50),
 @age  int

 as 
 begin
 insert into patient(name,adderss,age)values(@name,@adderss,@age)
 end

 select * from patient

 create proc sp_patient_getdata
 as
 begin 
 select * from patient
 end