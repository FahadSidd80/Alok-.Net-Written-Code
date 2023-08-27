create database MVC_Practice

use MVC_Practice

create table tblEmployee
(
empid int primary key identity,
name varchar(50),
email varchar(50),
password varchar(50),
mobileno int,
country int,
state int,
city int

)
alter table tblemployee alter column mobileno int


create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

create table tblstate
(
sid int primary key identity,
cid int,
sname varchar(50)
)

create table tblcity 
(
ctid int primary key identity,
sid int,
ctname varchar(50)


)


insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('USA')



insert into tblstate(cid,sname)values(1,'UP')
insert into tblstate(cid,sname)values(1,'Bihar')
insert into tblstate(cid,sname)values(1,'Delhi')

insert into tblstate(cid,sname)values(2,'Islamabad')
insert into tblstate(cid,sname)values(2,'Sindh')
insert into tblstate(cid,sname)values(2,'khayber')

insert into tblstate(cid,sname)values(3,'California')
insert into tblstate(cid,sname)values(3,'Texas')
insert into tblstate(cid,sname)values(3,'Toronto')



insert into tblcity(sid,ctname)values(1,'Lucknow')
insert into tblcity(sid,ctname)values(1,'Kanpur')
insert into tblcity(sid,ctname)values(2,'Patna')
insert into tblcity(sid,ctname)values(2,'Gaya')
insert into tblcity(sid,ctname)values(3,'Mandawli')
insert into tblcity(sid,ctname)values(3,'Vikas Nagar')
insert into tblcity(sid,ctname)values(1,'Hyderabad')
insert into tblcity(sid,ctname)values(1,'Peshawar')
insert into tblcity(sid,ctname)values(2,'Lahore')
insert into tblcity(sid,ctname)values(2,'Quotta')
insert into tblcity(sid,ctname)values(3,'Balooch')
insert into tblcity(sid,ctname)values(3,'Peshawar')
insert into tblcity(sid,ctname)values(1,'Zoho')
insert into tblcity(sid,ctname)values(1,'Washington DC')
insert into tblcity(sid,ctname)values(2,'florida')
insert into tblcity(sid,ctname)values(2,'Madrid')
insert into tblcity(sid,ctname)values(3,'NewYork')
insert into tblcity(sid,ctname)values(3,'Paris')

select * from tblcountry
select * from tblstate
select * from tblcity

select * from tblEmployee

