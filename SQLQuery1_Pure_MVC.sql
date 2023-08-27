create database Pure_MVC

use Pure_MVC

alter table tblemployee add country int

alter table tblEmployee add state int

create table tblEmployee
(
empid int primary key identity,
name varchar(50),
city varchar(50),
age int
)

create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India'),('Pakistan')
select * from tblcountry


create table tblstate
(
sid int primary key identity,
cid int,
sname varchar(50)
)

insert into tblstate(cid,sname)values(1,'UP')
insert into tblstate(cid,sname)values(1,'Bihar')
insert into tblstate(cid,sname)values(2,'Sindh')
insert into tblstate(cid,sname)values(2,'Khaiyber')

select * from tblemployee

truncate table tblEmployee


------------------------------------------------------------

---- MVC Last 
create table tblRegistration
(
rid int primary key identity,
name varchar(50),
email varchar(50),
password varchar(50),
age int
)

select * from tblRegistration