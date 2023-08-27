create database 

use dbpractice17

create table Student
(
id int primary key identity,
name varchar(50),
age int,
gender varchar(50),
rollno int,
branch varchar(50),
country varchar(50),
state varchar(50),
date varchar(50),
)

alter table Student add salary int

update Student set salary='500' where id=1

update Student set salary='500' where id=2

update Student set salary='1000' where id=3
update Student set salary='1500' where id=4
update Student set salary='4500' where id=5
update Student set salary='3000' where id=6
update Student set salary='5600' where id=7
update Student set salary='2000' where id=8
update Student set salary='1100' where id=9
update Student set salary='1700' where id=10
update Student set salary='400' where id=11



update student set MobileNumber='8419885346' where id=1

select * from Student

delete from Student where id=12


insert into Student(name,age,gender,rollno,branch,country,state,date)values('fahad','21','Male','10','Science','India','uttar pradesh','02-03-2021')

insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('kamran khan','22','Male','15','Science','India','Punjab','04-04-2021','500')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('srivastava','25','Other','16','Commerce','Pakistan','Sindh','04-04-2021','1000')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('Abdullah siddiqui','26','Male','17','Bio','Pakistan','Sindh','04-04-2021','1500')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('pp','29','Other','18','Science','Pakistan','Balooch','03-03-2021','2000')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('Fatima','30','Female','19','Maths','USA','New York','03-03-2021','6300')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('abhishek','32','Male','20','Maths','USA','New York','05-03-2021','5500')
insert into Student(name,age,gender,rollno,branch,country,state,date)values('nadeem','33','Male','22','Art','USA','Atlanta','05-03-2021')
insert into Student(name,age,gender,rollno,branch,country,state,date)values('ali','34','Male','25','Bio','Canada','Ontario','08-04-2021')
insert into Student(name,age,gender,rollno,branch,country,state,date)values('faisal','55','Male','28','Canada','India','Jonspeter','08-04-2021')
insert into Student(name,age,gender,rollno,branch,country,state,date)values('aleena','44','Female','30','art','India','Bihar','02-06-2021')


select * from Student


select date,state from Student order by date desc


select sum(salary) from student

select * from student

select sum(rollno) from student

select max(rollno) from student

select avg(salary) from student

select min(salary) from student
select reverse(rollno) from student

select reverse(name) from student

select reverse(country) from student

select count(name) from student
-- is same as

select count(*) from student

select count(country) from student

select count(state) from student -- its count how many number of records in particular column


select gender, sum(salary) Total_salary from student
group by gender


select branch, sum(salary) Total_salary from student
group by branch

select branch, sum(salary) as total_salary from student
group by branch

select branch, count(*) as total_student from student
group by branch

select country, count(*) total_student from student
group by country

select name,gender, sum(salary) total_salary from student
group by  name, gender


select count(name) Total_Emplopyee_acc_to_gender, gender, sum(salary) total_salary from student
group by gender



select count(name),gender,sum(salary) total_salary from student
group by gender,name


select branch,max(salary) total_salary from student
group by branch




select gender,sum(salary) total_salary from Student where salary > 2000
group by gender having sum(salary) > 4000

select gender,sum(salary) total_salary from Student where salary > 3500
group by gender  having sum(salary) > 120

select * from student

select date,count(*) Total_salary from student 
group by date

delete from student where  not id in (
select max(id) from student
group by name,age,gender,rollno,branch,country,state,date,salary)

delete from student where id in (14,15,16,17)
select * from student


delete from student where  not id in (
select min(id) from student
group by name,age,gender,rollno,branch,country,state,date,salary)


-------------------------------------------------------------------------------------------------------

select * from student

select min(salary) from student

select max(salary) from student

select avg(salary) from student

select count(salary) from student


select * from student order by name

select * from student order by age

select * from student order by rollno


select * from student order by country

select * from student order by state
select * from student order by date


select * from student order by salary  -- by default asc order


select * from student order by salary desc


select  top(3)* from student order by salary  desc

select top(3)* from student order by id  desc



select min(salary) from
(select top(3)salary from student order by salary desc)ABC -----ABC is DERIVED_TABLE


select min(salary) from


select top(1)salary from
(select top(3) salary from student order by salary desc) PQR order by salary  asc


--------------------------------------------------------------------------------------------------------

-- 18-03-21, thursday

select * from student

update student set name=gender,gender=name


update student set gender=
case
when gender='Male' then 'Female'
when gender='Female' then 'Male'

end

update student set gender='Other' where id=20 or id=22

update student set gender=
case
when gender='Male' then 'Female'
when gender='Female' then 'Male'
else gender
end


select ascii('A')
select ASCII('A')

select ASCII('a')
select char('65')
select char('66')

--------------------------------------------------------------------------------------
--- how to print A-Z in sql by using loop

declare @start int
set @start=65
while (@start < 91)
begin
	print char (@start)
	set @start=@start+1
end


--------------OR-----------

declare @x int

set @x=65
while (@x <91)
begin
	print char(@x)
	set @x= @x+1
end

declare @a int
set @a=65

while(@a<91)
begin
	print char(@a)
	set @a=@a+2
end


create table Employee
(
sid int primary key identity,
sname varchar(50),
salary int
)

select * from Employee

select name, salary from student where id=999

insert into Employee select * from student --- RUN if both table structure same otherwise not
truncate table employee

insert into Employee(sname,salary) select name,salary from student-- column tab denge jab structure alag alag ho 

insert into Employee(sname,salary) select branch,rollno from student --- only matter column datatype not column name

select * into Product from student
select * from product

select * into teacher from student where 1=2

select * from teacher

select * from student where name='fahad'

select * from student where name like'kamran%'

select * from student where name like 'fa%'

select * from student where name like 'a%'

select * from student where name like '_a%'

select * from student where name like '%a'

select * from student where name like '%a_'

select * from student where name like '%_a_'

select * from student where name like '__a%' --- % means kuch bhi  _ means gap


select * from student where name like 'a%' or name like 'f%'


select * from student where name like '[a,f]%'

select * from student where name like '%[a,f]'

select * from student where name like '[a-x]%'

select * from student where name like '%[a-x]'

select * from student where name  not like '[a-f]%'

select * from student where name like '[^a-f]%'

-- wild card operater are used with like command 

----------------------------------------------------------------------------

select * from sys.objects where type='U'
select * from sys.objects where type='P'
select * from sys.objects where type='Pk'


select * from sys.databases

------------------------------------------------------------------------------------------------------


select GETDATE()

select GETDATE()

select GETDATE()

select DATEPART(DAY,GETDATE()) as Day

select DATEPART(Month,GETDATE()) as Month

select DATEPART(YEAR,GETDATE()) year

select DATEPART(HOUR,GETDATE()) hour

select DATEPART(MINUTE,GETDATE()) minute

select DATEPART(SECOND,GETDATE()) second

select DATEPART(MILLISECOND,GETDATE()) millisecond


select DATENAME(DW,GETDATE()) as Today_name

select DATENAME(dw,GETDATE()) as Today_name


select DATENAME(DW,'08-15-1947') as Thatday_name -- first enter month name format MM-DD-YYYY

select DATENAME(DW,'12-29-1998') as Thatday_name

select DATENAME(DW,'10-05-1009') as Today_name

select DATEADD(YEAR,7653,GETDATE())

select DATEADD(YEAR,-6,GETDATE())


select DATEADD(Month,-6,GETDATE())

select DATEADD(day,-6,GETDATE())


select DATEADD(Month,-6,'09-06-1999')


SELECT DATEDIFF(YEAR,'09-06-1999',GETDATE())


SELECT DATEDIFF(MONTH,'09-06-1999',GETDATE())

SELECT DATEDIFF(MONTH,'09-06-1999','09-03-2005')
SELECT DATEDIFF(DAY,'09-06-1999',GETDATE())


SELECT DATEDIFF(WEEK,'09-06-1999',GETDATE())


SELECT DATEDIFF(HOUR,'09-06-1999',GETDATE())

SELECT DATEDIFF(SECOND,'09-06-1999',GETDATE())

SELECT DATEDIFF(SECOND,'09-06-1999',GETDATE())

SELECT DATEDIFF(MILLISECOND,'09-06-1999',GETDATE())


use dbjobportal

use dbpractice17

SELECT * FROM jobseeker WHERE INSERTED_DATE BETWEEN DATEADD(DAY,-5,GETDATE()) AND GETDATE()

---------------------------------------------------------------------------------------------------------

--- Function

create function FN_1(@DOB date)
returns int
as
begin
	declare @age int
	select @age=datediff(year,@DOB,getdate())
	return @age
end

select dbo.FN_1('09-06-1999')

------------------OR -------------------------------*********-----------------

CREATE FUNCTION FN_DOB(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @AGE INT
	SELECT @AGE=DATEDIFF(YEAR,@DOB,GETDATE())
	RETURN @AGE
END

SELECT DBO.FN_DOB('08-15-1947')