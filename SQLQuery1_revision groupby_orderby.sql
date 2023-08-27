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

insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('kamran','22','Male','15','Science','India','Punjab','04-04-2021','500')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('qq','25','Other','16','Commerce','Pakistan','Sindh','04-04-2021','1000')
insert into Student(name,age,gender,rollno,branch,country,state,date,salary)values('Abdullah','26','Male','17','Bio','Pakistan','Sindh','04-04-2021','1500')
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