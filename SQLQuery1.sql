create database Db261220
use Db261220

create table student
(
id int primary key identity,
Name varchar(50),
City varchar(50),
Age int,
MobileNumber bigint
)

insert into student(Name,City,Age,MobileNumber) values('fahad siddiqui','sultanpur kasba',22,7518891337)
insert into student(Name,City,Age,MobileNumber)values('abdullah siddiqui','lucknow cant','20','8552325646')
insert student(Name,City,Age,MobileNumber)values('hamza siddiqui','kanpur dehat',22,8115555659)
insert student(Name,City,age,MobileNumber) values('fatima siddiqui','varanasi',20,8422336522)



select * from student

update student set name='fahad ali', city='agra', age='23' where id=1
update student set MobileNumber='8419885346' where id=1
update student set city='kanpur' where id=5



delete from student where id=9
delete student where id=6
delete student where id=7

delete student  where id=5
update student set city='banglore' where id=8
select* from student 


-----------------------------------------------------------------------------------------------------------------


 alter table student add income int
 select * from student
 update student set income=100 
 update student set salary=7000001 where id=11
 alter table student add salaryworker bigint
 update student set salaryworker=200000000
 update student set city='london' where id=13
---------------------------------------------------------------------------------------------------------------------------------- 
 alter table student add address varchar(50), Marks float(20)

 select * from student

 update student set address='H NO. 275, New friends colony, delhi', Marks='1022.34555' where id=11

 alter table student add email varchar(50)
 update student set email='fahadsid8026@gmail.com'

 alter table student drop column address 
 update  student set address='akbarpur' where id=7
 select * from student
 ------------------------------------------------------------------------------------------------------------------------------------------
 sp_renamedb 'Db261220','DBN261220'
 sp_renamedb 'DBN261220','db261220'
 sp_renamedb 'db261220','1db2345'
 sp_renamedb '1db2345','@db2743'
 sp_renamedb '@db2743','_db2020'
 sp_renamedb '_db2020','db261220'

 sp_rename 'student', 'Employee'
 sp_rename 'Employee', 'student'
 select * from student

 alter table student alter column Marks int
 update student set marks='fahad' where id=13
 alter table student alter column Marks int
 update student set  Marks=15 where id=13


 -----------------------------------------------------------------------------------------------------------------------------

 select * from student
 select name,email,age from student

 select id,name,age,email from student

 select * from student where id=11
 select * from student where id>=9

 select * from student where id<=10
 select * from student where id<10

 select * from student where id=12 or id=7
 select * from student where id=1 and id=5
 select * from student where id=1 and name='Fahad Ali' and age=23 and address='zila sultanpur' and email='fahadsid8026@gmail.com'

 select * from student where id=5 or id=7 or id=10 or name='fahad ali' or address='zila sultanpur' or email='fahadsid8026@gmail.com'
  
select* from student where id in (10,13,15)

select * from student where id not in (10,12)
select * from student
select * from student where id between 7 and 14

select * from student where id not between 2 and 11

---------------------------------------------------------------------------------------------------------------------------------------



select * from student where name='fahad ali'

select * from student where name like 'a%'
select * from student where name like 'f%'

select* from student where name like '%m%' 
select  * from student where name like '_a%' 

select * from student where name like '___a%'
select * from student where name like '%a__'

select * from student where name like '%a_' and  name like '%a_'

select * from student where name like '[a,h]%'  ----- starting me a hona chahiye ya fir h aur peeche kuch bhi ho
select * from student where name like '[f,h]%'
select * from student where name like '%[f,h]%'
select * from student where name like '%[f,h]'
select * from student where name like '__[f,h]%'---- third no pe F nahi to h aana chahiye

select * from student where name like '%[f,l]__'
select * from student where name like '[f-h]%'

select * from student where name like '[f-a]%'

select * from student where name like '[f-a]%'
select * from student where name like '_[a-m]%'
select * from student where name like '[^f-h]%'  ---- not operater
select * from student
select Marks from student

----wild card operator--- are those operator which are used with  like command 