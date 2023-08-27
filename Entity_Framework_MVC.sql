create database Entity_Framewrk_MVC

 use Entity_Framewrk_MVC

 alter table Emp add country int
 alter table Emp add state int

 create table tblcountry
 (
 cid int primary key identity,
 cname varchar(50)
 )

 

 insert into tblcountry(cname)values('India')
 insert into tblcountry(cname)values('Pakistan')


  create table tblstate
 (
 sid int primary key identity,
 cid int,
 sname varchar(50)
 )

 select * from tblstate
 select * from tblcountry

 delete  from tblstate where sid = 4


 insert into tblstate(cid,sname)values(1,'UP')
 insert into tblstate(cid,sname)values(1,'Bihar')
 insert into tblstate(cid,sname)values(2,'Sindh')
 insert into tblstate(cid,sname)values(2,'Khaiyber')

 create table Emp
 (
 empid int primary key identity,
 name varchar(50),
 address varchar(50),
 age int
 )


 create proc  sp_Emp_insert
 
 @name varchar(50),
 @address varchar(50),
 @age int
 as
 begin
 insert into Emp(name,address,age)values(@name,@address,@age)
 end

create proc  sp_Emp_update
 @empid int,
 @name varchar(50),
 @address varchar(50),
 @age int
 as
 begin
 update Emp set name=@name,address=@address,age=@age where empid=@empid
 end


create proc  sp_Emp_delete
@empid int
as
begin
delete from  Emp  where empid=@empid
end


create proc  sp_Emp_edit
@empid int
 as
 begin
select *  from  Emp  where empid=@empid
 end

 create proc  sp_Emp_get

 as
 begin
 select *  from  Emp  
 end