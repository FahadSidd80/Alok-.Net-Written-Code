create database Entity_Framewrk_46

 use Entity_Framewrk_46

 create table tblEmp
 (
 empid int primary key identity,
 name varchar(50),
 address varchar(50),
 age int
 )


 create proc  sp_tblEmp_insert
 
 @name varchar(50),
 @address varchar(50),
 @age int
 as
 begin
 insert into tblEmp(name,address,age)values(@name,@address,@age)
 end

create proc  sp_tblEmp_update
 @empid int,
 @name varchar(50),
 @address varchar(50),
 @age int
 as
 begin
 update tblEmp set name=@name,address=@address,age=@age where empid=@empid
 end


  create proc  sp_tblEmp_delete
@empid int
 as
 begin
delete from  tblEmp  where empid=@empid
 end

   create proc  sp_tblEmp_edit
@empid int
 as
 begin
select *  from  tblEmp  where empid=@empid
 end

 create proc  sp_tblEmp_get

 as
 begin
 select *  from  tblEmp  
 end