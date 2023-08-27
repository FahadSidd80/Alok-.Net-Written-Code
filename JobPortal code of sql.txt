create database Dbjobportal

use Dbjobportal

drop table jobseeker


create table jobseeker
(
jsid int primary key identity,
name varchar(50),
age int,
mobileno bigint,
dob varchar(50),
gender int,
email varchar(50),
confirmemail varchar(50),
password varchar(50),
confirmpassword varchar(50),
country int,
state int,
city int,
jobprofile int,
skill int,
qualification int,
hobbies int,
image varchar(100),
resume varchar(100),
inserted_date date,
status int default 0
)

select * from jobseeker
 



create proc sp_jobseeker_insert

@name varchar(50),
@age int,
@mobileno bigint,
@dob varchar(50),
@gender int,
@email varchar(50),
@confirmemail varchar(50),
@password varchar(50),
@confirmpassword varchar(50),
@country int,
@state int,
@city int,
@jobprofile int,
@skill int,
@qualification int,
@hobbies int,
@image varchar(100),
@resume varchar(100)

as
begin 
insert into jobseeker(name,age,mobileno,dob,gender,email,confirmemail,password,confirmpassword,country,state,city,jobprofile,skill,qualification,hobbies,image,resume,inserted_date)values(@name,@age,@mobileno,@dob,@gender,@email,@confirmemail,@password,@confirmpassword,@country,@state,@city,@jobprofile,@skill,@qualification,@hobbies,@image,@resume,getdate())
end

-- delete procedure

alter proc sp_jobseeker_delete
@id int
as
begin
update  jobseeker set status=1 where jsid=@id
end


-- select procedure

create proc sp_jobseeker_select
as
begin
select * from jobseeker where status=0
end


--- edit proc

create proc sp_jobseeker_edit
@id int
as
begin
select * from jobseeker where jsid=@id
end

--- update proc

create proc sp_jobseeker_update
@id int,
@name varchar(50),
@age int,
@mobileno bigint,
@dob varchar(50),
@gender int,
@email varchar(50),
@confirmemail varchar(50),
@password varchar(50),
@confirmpassword varchar(50),
@country int,
@state int,
@city int,
@jobprofile int,
@skill int,
@qualification int,
@hobbies int,
@image varchar(100),
@resume varchar(100)

as
begin 
update  jobseeker set name=@name,age=@age,mobileno=@mobileno,dob=@dob,gender=@gender,email=@email,confirmemail=@confirmemail,password=@password,confirmpassword=@confirmpassword,country=@country,state=@state,city=@city,jobprofile=@jobprofile,skill=@skill,qualification=@qualification,hobbies=@hobbies,image=@image,resume=@resume where jsid=@id
end



create table jobrecruiter
(
jrid int primary key identity,
name varchar(50),
url varchar(50),
country int,
state int,
city int,
address varchar(100),
hrname varchar(50),
hrmobileno bigint,
hremail varchar(50),
hrpassword varchar(50),
inserted_date date,
status int default 0
)

select * from jobrecruiter

create proc sp_jobrecruiter_insert

@name varchar(50),
@url varchar(50),
@country int,
@state int,
@city int,
@address varchar(100),
@hrname varchar(50),
@hrmobileno bigint,
@hremail varchar(50),
@hrpassword varchar(50)

as
begin
insert into jobrecruiter (name,url,country,state,city,address,hrname,hrmobileno,hremail,hrpassword,inserted_date)values(@name,@url,@country,@state,@city,@address,@hrname,@hrmobileno,@hremail,@hrpassword,getdate())
end



create proc sp_jobrecruiter_update
@id int,
@name varchar(50),
@url varchar(50),
@country int,
@state int,
@city int,
@address varchar(100),
@hrname varchar(50),
@hrmobileno bigint,
@hremail varchar(50),
@hrpassword varchar(50)

as
begin
update jobrecruiter set  name=@name,url=@url,country=@country,state=@state,city=@city,address=@address,hrname=@hrname,hrmobileno=@hrmobileno,hremail=@hremail,hrpassword=@hrpassword where jrid=@id
end

create proc sp_jobrecruiter_delete
@id int
as
begin
update jobrecruiter set status=1 where jrid=@id
end


create proc sp_jobrecruiter_edit
@id int
as
begin
select * from jobrecruiter where jrid=@id
end


create proc sp_jobrecruiter_select
as
begin
select * from jobrecruiter where status=0
end


create table tblgender
(
gid int primary key identity,
gname varchar(50)
)

insert into tblgender(gname)values('Male')
insert into tblgender(gname)values('Female')
insert into tblgender(gname)values('Other')

select * from tblgender

create proc sp_tblgender_select
as
begin
select * from tblgender
end

create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblcountry(cname)values('India')
insert into tblcountry(cname)values('Pakistan')
insert into tblcountry(cname)values('USA')
insert into tblcountry(cname)values('Canada')
delete from tblcountry where cid=4

create proc sp_tblcountry_select
as
begin
select * from tblcountry
end

create table tblstate
(
cid int,
sid int primary key identity,
sname varchar(50)
)

insert into tblstate(cid,sname)values(1,'Uttar Pradesh')
insert into tblstate(cid,sname)values(1,'Delhi')
insert into tblstate(cid,sname)values(2,'Sindh')
insert into tblstate(cid,sname)values(2,'Khaiber')
insert into tblstate(cid,sname)values(3,'California')
insert into tblstate(cid,sname)values(3,'Washington')
insert into tblstate(cid,sname)values(4,'Alberta')
insert into tblstate(cid,sname)values(4,'British Columbia')


select * from tblstate

create proc sp_tblstate_select
@cid int
as
begin
select * from tblstate  where cid=@cid
end




create table tblcity
(
sid int,
ctid int primary key identity,
ctname varchar(50)
)

insert into tblcity(sid,ctname)values(1,'Lucknow')
insert into tblcity(sid,ctname)values(1,'Noida')
insert into tblcity(sid,ctname)values(2,'Lakshmi Nagar')
insert into tblcity(sid,ctname)values(2,'Okhla')
insert into tblcity(sid,ctname)values(3,'Karachi')
insert into tblcity(sid,ctname)values(3,'Hyderabad')
insert into tblcity(sid,ctname)values(4,'Peshawar')
insert into tblcity(sid,ctname)values(4,'Abottabad')
insert into tblcity(sid,ctname)values(5,'Alameda')
insert into tblcity(sid,ctname)values(5,'Adelanto')
insert into tblcity(sid,ctname)values(6,'Olympia')
insert into tblcity(sid,ctname)values(6,'Pasco')
insert into tblcity(sid,ctname)values(7,'Camrose')
insert into tblcity(sid,ctname)values(7,'Calgary')
insert into tblcity(sid,ctname)values(8,'Surrey')
insert into tblcity(sid,ctname)values(8,'Richmond')


select * from tblstate

create proc sp_tblcity_select
@sid int
as
begin
select * from tblcity  where sid=@sid
end

create table jobprofile
(
jpid int primary key identity,
jpname varchar(50)
)

insert into jobprofile(jpname)values('.NET')
insert into jobprofile(jpname)values('Java')
insert into jobprofile(jpname)values('PHP')
insert into jobprofile(jpname)values('Python')
insert into jobprofile(jpname)values('BPO')
insert into jobprofile(jpname)values('Sales')
insert into jobprofile(jpname)values('Testing')


select * from jobprofile

create procedure sp_jobprofile_select
as
begin
select * from jobprofile
end

create table skills
(
jpid int,
skid int primary key identity,
skname varchar(50),
)

insert into skills(jpid,skname)values(1,'ASP.NET')
insert into skills(jpid,skname)values(1,'MVC')
insert into skills(jpid,skname)values(1,'C#')
insert into skills(jpid,skname)values(1,'Jquery')
insert into skills(jpid,skname)values(1,'HTML')
insert into skills(jpid,skname)values(1,'CSS')
insert into skills(jpid,skname)values(1,'JavaScript')
insert into skills(jpid,skname)values(1,'Webservices')
insert into skills(jpid,skname)values(1,'Entity framework')
insert into skills(jpid,skname)values(1,'API')
insert into skills(jpid,skname)values(1,'SQL Server')
insert into skills(jpid,skname)values(2,'Core Java')
insert into skills(jpid,skname)values(2,'Advance Java')
insert into skills(jpid,skname)values(2,'Spring Boot')
insert into skills(jpid,skname)values(2,'Hibernate')
insert into skills(jpid,skname)values(2,'JSP')
insert into skills(jpid,skname)values(2,'SQL')
insert into skills(jpid,skname)values(2,'Oracle')
insert into skills(jpid,skname)values(3,'Drupal')
insert into skills(jpid,skname)values(3,'Magento')
insert into skills(jpid,skname)values(3,'Laravel')
insert into skills(jpid,skname)values(3,'Core PHP')
insert into skills(jpid,skname)values(4,'Cherrypy')
insert into skills(jpid,skname)values(4,'Django')
insert into skills(jpid,skname)values(4,'Flask')
insert into skills(jpid,skname)values(4,'Web2py')
insert into skills(jpid,skname)values(5,'Call Center')
insert into skills(jpid,skname)values(5,'Customer service')
insert into skills(jpid,skname)values(5,'Quality Management')
insert into skills(jpid,skname)values(6,'Sales Executive')
insert into skills(jpid,skname)values(6,'Sales Manager')
insert into skills(jpid,skname)values(6,'Account Manager')
insert into skills(jpid,skname)values(6,'Account Executive')
insert into skills(jpid,skname)values(6,'Sales Engineer')
insert into skills(jpid,skname)values(7,'Manual')
insert into skills(jpid,skname)values(7,'selenium Testing')
insert into skills(jpid,skname)values(7,'Automation Testing')

create proc sp_skills_select
@jpid int
as
begin
select * from skills where jpid=@jpid
end


create table hobbies
(
hid int primary key identity,
hname varchar(50)

)

insert into hobbies(hname)values('Travelling')
insert into hobbies(hname)values('Singing')
insert into hobbies(hname)values('Coding')
insert into hobbies(hname)values('Wrirting')
insert into hobbies(hname)values('Reading')
insert into hobbies(hname)values('Dancing')
insert into hobbies(hname)values('Cooking')
insert into hobbies(hname)values('Cricket')


create proc sp_hobbies_select
as
begin
select * from hobbies
end

create table qualification
(
qid int primary key identity,
qname varchar(50),
)

insert into qualification(qname)values('B.Tech')
insert into qualification(qname)values('M.Tech')
insert into qualification(qname)values('BCA')
insert into qualification(qname)values('MCA')
insert into qualification(qname)values('Diploma')
insert into qualification(qname)values('MBA')
insert into qualification(qname)values('BBA')
insert into qualification(qname)values('B.Com')

create proc sp_qualification_select
as
begin 
select * from qualification
end

