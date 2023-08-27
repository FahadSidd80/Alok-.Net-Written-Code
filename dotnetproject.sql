use dotnetproject

sp_helptext sp_gender_get
create proc sp_gender_get  
 as  
 begin  
 select * from gender  
 end  

 sp_helptext sp_student_select

alter proc sp_student_select  
as  
begin  
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblstate on student.state=tblstate.sid
join tblcity on student.city=tblcity.ctid
join tbllocality on student.locality=tbllocality.lid
join gender on student.gender=gender.gid

end  

sp_helptext sp_reg_insert

create proc  sp_reg_insert  
@name varchar(50),  
@country varchar(50),  
@gender int,  
@age int  
as  
begin  
insert into student(name,country,gender,age)values(@name,@country,@gender,@age)  
end


select * from registration
select * from student
select * from gender

create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

create proc sp_country_get
as
begin
select * from tblcountry
end

insert into tblcountry(cname)values('India')

insert into tblcountry(cname)values('canada')

insert into tblcountry(cname)values('pakistan')

insert into tblcountry(cname)values('Turkey')

select * from  tblcountry


create table tblstate
(
sid int primary key identity,
sname varchar(50),
cid int,
)

create proc sp_state_get
@countryid int
as
begin
select * from tblstate where cid=@countryid
end



select * from tblstate
insert into tblstate(cid,sname)values(1,'uttar pradesh')

insert into tblstate(cid,sname)values(1,'Bihar')

insert into tblstate(cid,sname)values(2,'toronto')

insert into tblstate(cid,sname)values(2,'Alberta')

insert into tblstate(cid,sname)values(3,'sindh')

insert into tblstate(cid,sname)values(3,'baloochistan')

insert into tblstate(cid,sname)values(4,'istanbul')

insert into tblstate(cid,sname)values(4,'izmir')

select * from tblstate where cid=2


create table tblcity
(
ctid int primary key identity,
sid int,
ctname varchar(50)
)

create proc sp_city_get
@stateid int
as
begin
select * from tblcity where sid=@stateid
end


select * from tblcity where sid=8
insert into tblcity(sid,ctname)values(1,'Lucknow')
insert into tblcity(sid,ctname)values(1,'Kanpur')
insert into tblcity(sid,ctname)values(1,'Agra')
insert into tblcity(sid,ctname)values(2,'champaran')
insert into tblcity(sid,ctname)values(2,'Patna')
insert into tblcity(sid,ctname)values(2,'Nalanda')
insert into tblcity(sid,ctname)values(3,'Ottawa')
insert into tblcity(sid,ctname)values(3,'Downtown')
insert into tblcity(sid,ctname)values(1,'ontario')
insert into tblcity(sid,ctname)values(4,'Edmortan')
insert into tblcity(sid,ctname)values(4,'calgerry')
insert into tblcity(sid,ctname)values(4,'medicine hat')
insert into tblcity(sid,ctname)values(5,'karachi')
insert into tblcity(sid,ctname)values(5,'Hydrabad')
insert into tblcity(sid,ctname)values(5,'Nawabshah')
insert into tblcity(sid,ctname)values(6,'Quetta')
insert into tblcity(sid,ctname)values(6,'chaman')
insert into tblcity(sid,ctname)values(6,'turbat')
insert into tblcity(sid,ctname)values(7,'takshim')
insert into tblcity(sid,ctname)values(7,'constantinple')
insert into tblcity(sid,ctname)values(7,'galata')
insert into tblcity(sid,ctname)values(8,'ahmet')
insert into tblcity(sid,ctname)values(8,'IT city')
insert into tblcity(sid,ctname)values(8,'sultanate')

create table tbllocality
(
lid int primary key identity,
ctid int,
lname varchar(50)
)

create proc sp_locality_get
@cityid int
as
begin
select * from tbllocality where ctid=@cityid
end


select * from tblcity
insert into tbllocality(ctid,lname)values(1,'gomtinagar')
insert into tbllocality(ctid,lname)values(1,'charbagh')
insert into tbllocality(ctid,lname)values(1,'Aishbagh')
insert into tbllocality(ctid,lname)values(3,'Khandari')
insert into tbllocality(ctid,lname)values(3,'tundla')
insert into tbllocality(ctid,lname)values(3,'shamshapur')
insert into tbllocality(ctid,lname)values(2,'Naubasta')
insert into tbllocality(ctid,lname)values(2,'Fazalganj')
insert into tbllocality(ctid,lname)values(2,'Govind nagar')
insert into tbllocality(ctid,lname)values(4,'abc')
insert into tbllocality(ctid,lname)values(4,'def')
insert into tbllocality(ctid,lname)values(4,'hij')
insert into tbllocality(ctid,lname)values(5,'hhg')
insert into tbllocality(ctid,lname)values(5,'hgf')
insert into tbllocality(ctid,lname)values(5,'kjh')
insert into tbllocality(ctid,lname)values(6,'sdsjdjs')
insert into tbllocality(ctid,lname)values(6,'sdsds')
insert into tbllocality(ctid,lname)values(6,'dssdsd')
insert into tbllocality(ctid,lname)values(7,'takdsd')
insert into tbllocality(ctid,lname)values(7,'constandasde')
insert into tbllocality(ctid,lname)values(7,'galatadad')
insert into tbllocality(ctid,lname)values(8,'ahdada')
insert into tbllocality(ctid,lname)values(8,'ITadadad')
insert into tbllocality(ctid,lname)values(8,'suladada')

insert into tbllocality(ctid,lname)values(1,'gomtinagar')
insert into tbllocality(ctid,lname)values(1,'charbagh')
insert into tbllocality(ctid,lname)values(1,'Aishbagh')
insert into tbllocality(ctid,lname)values(3,'Khandari')
insert into tbllocality(ctid,lname)values(3,'tundla')
insert into tbllocality(ctid,lname)values(3,'shamshapur')
insert into tbllocality(ctid,lname)values(2,'Naubasta')
insert into tbllocality(ctid,lname)values(2,'Fazalganj')
insert into tbllocality(ctid,lname)values(2,'Govind nagar')
insert into tbllocality(ctid,lname)values(4,'abc')
insert into tbllocality(ctid,lname)values(4,'def')
insert into tbllocality(ctid,lname)values(4,'hij')
insert into tbllocality(ctid,lname)values(5,'hhg')
insert into tbllocality(ctid,lname)values(5,'hgf')
insert into tbllocality(ctid,lname)values(5,'kjh')
insert into tbllocality(ctid,lname)values(6,'sdsjdjs')
insert into tbllocality(ctid,lname)values(6,'sdsds')
insert into tbllocality(ctid,lname)values(6,'dssdsd')
insert into tbllocality(ctid,lname)values(7,'takdsd')
insert into tbllocality(ctid,lname)values(7,'constandasde')
insert into tbllocality(ctid,lname)values(7,'galatadad')
insert into tbllocality(ctid,lname)values(8,'ahdada')
insert into tbllocality(ctid,lname)values(8,'ITadadad')
insert into tbllocality(ctid,lname)values(8,'suladada')

insert into tbllocality(ctid,lname)values(9,'gomsfddsagar')
insert into tbllocality(ctid,lname)values(9,'chadsfdsgh')
insert into tbllocality(ctid,lname)values(9,'Aishbfsdafgh')
insert into tbllocality(ctid,lname)values(10,'Khanddsdsi')
insert into tbllocality(ctid,lname)values(10,'tundsdsdsa')
insert into tbllocality(ctid,lname)values(10,'shadsadapur')
insert into tbllocality(ctid,lname)values(11,'Naubasta')
insert into tbllocality(ctid,lname)values(11,'Fazalganj')
insert into tbllocality(ctid,lname)values(11,'Govind nagar')
insert into tbllocality(ctid,lname)values(12,'abc')
insert into tbllocality(ctid,lname)values(12,'def')
insert into tbllocality(ctid,lname)values(12,'hij')
insert into tbllocality(ctid,lname)values(13,'hhg')
insert into tbllocality(ctid,lname)values(13,'hgf')
insert into tbllocality(ctid,lname)values(13,'kjh')
insert into tbllocality(ctid,lname)values(14,'sdsjdjs')
insert into tbllocality(ctid,lname)values(14,'sdsds')
insert into tbllocality(ctid,lname)values(14,'dssdsd')
insert into tbllocality(ctid,lname)values(15,'takdsd')
insert into tbllocality(ctid,lname)values(15,'constandasde')
insert into tbllocality(ctid,lname)values(15,'galatadad')
insert into tbllocality(ctid,lname)values(16,'ahdada')
insert into tbllocality(ctid,lname)values(16,'ITadadad')
insert into tbllocality(ctid,lname)values(16,'suladada')
insert into tbllocality(ctid,lname)values(17,'abc')
insert into tbllocality(ctid,lname)values(17,'def')
insert into tbllocality(ctid,lname)values(17,'hij')
insert into tbllocality(ctid,lname)values(18,'hhg')
insert into tbllocality(ctid,lname)values(18,'hgf')
insert into tbllocality(ctid,lname)values(18,'kjh')
insert into tbllocality(ctid,lname)values(19,'sdsjdjs')
insert into tbllocality(ctid,lname)values(19,'sdsds')
insert into tbllocality(ctid,lname)values(19,'dssdsd')
insert into tbllocality(ctid,lname)values(20,'takdsd')
insert into tbllocality(ctid,lname)values(20,'constandasde')
insert into tbllocality(ctid,lname)values(20,'galatadad')
insert into tbllocality(ctid,lname)values(21,'ahdada')
insert into tbllocality(ctid,lname)values(21,'ITadadad')
insert into tbllocality(ctid,lname)values(21,'suladada')
insert into tbllocality(ctid,lname)values(22,'abc')
insert into tbllocality(ctid,lname)values(22,'def')
insert into tbllocality(ctid,lname)values(22,'hij')
insert into tbllocality(ctid,lname)values(23,'hhg')
insert into tbllocality(ctid,lname)values(23,'hgf')
insert into tbllocality(ctid,lname)values(23,'kjh')
insert into tbllocality(ctid,lname)values(24,'sdsjdjs')
insert into tbllocality(ctid,lname)values(24,'sdsds')
insert into tbllocality(ctid,lname)values(24,'dssdsd')


select* from tbllocality 
select  * from registration
select  * from student
alter table registration add gender varchar(50),country varchar(50),state varchar(50),locality varchar(50),email varchar(50),confirmemail varchar(50),password varchar(50),confirmpassword varchar(50)

alter table student add state varchar(50),locality varchar(50),email varchar(50),confirmemail varchar(50),password varchar(50),confirmpassword varchar(50)
alter table student add city varchar(50)
sp_helptext sp_reg_insert

alter proc  sp_reg_insert  
@name varchar(50),  
@country int,  
@gender int,  
@age int,
@state int,
@city int,
@locality int,
@email varchar(50),
@confirmemail varchar(50),
@password varchar(50),
@confirmpassword varchar(50)

as  
begin  
insert into student(name,country,gender,age,state,city,locality,email,confirmemail,password,confirmpassword)values(@name,@country,@gender,@age,@state,@city,@locality,@email,@confirmemail,@password,@confirmpassword)  
end

select * from student
select * from registration
select * from gender
select * from tblcountry
select * from tblstate
select * from tblcity
select * from tbllocality



select stid,name,gender,age,country,state,city,locality,email,confirmemail,password,confirmpassword from student

select * from student 

join tblcountry on student.country=tblcountry.cid

select * from student 
join tblcountry on student.country=tblcountry.cid
join tblstate on student.state=tblstate.sid
join tblcity on student.city=tblcity.ctid
join tbllocality on student.locality=tbllocality.lid
join gender on student.gender=gender.gid




select * from tblcountry

join tblstate on student.state=tblstate.sid
alter table student alter column country varchar(50)

truncate table student

select * from gender


alter table student alter column country int

alter table student alter column country int
alter table student alter column state int
alter table student alter column city int
alter table student alter column locality int
alter table student alter column gender int

select * from student

