create database dbmarch16

use dbmarch16

create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)


insert into Employee(name,gender,salary,department)values('Fahad','Male',500,'IT')
insert into Employee(name,gender,salary,department)values('Hamza','Male',1000,'Medical')
insert into Employee(name,gender,salary,department)values('Abdullah','Male',1500,'Management')
insert into Employee(name,gender,salary,department)values('Fatima','Female',2000,'IT')
insert into Employee(name,gender,salary,department)values('Neha','Female',2500,'Sales')
insert into Employee(name,gender,salary,department)values('Taiba','Female',3000,'Marketing')
insert into Employee(name,gender,salary,department)values('Shifa','Female',3500,'IT')
insert into Employee(name,gender,salary,department)values('pp','Other',4000,'HR')
insert into Employee(name,gender,salary,department)values('qq','Other',5000,'HR')
insert into Employee(name,gender,salary,department)values('Suraj','Male',5500,'IT')


select * from Employee

select gender,salary from Employee

select sum(salary) from Employee

select gender,sum(salary) from Employee
group by gender   ---- ###ask in interview most

select department,sum(salary) from Employee
group by department


select sum(salary) from Employee
group by department


select department,sum(salary) as Total_Salary from Employee
group by department  -- as is optional


select department,sum(salary)  Total_Salary from Employee
group by department  -- as is optional



select department,count(*) from Employee
group by department



select department,count(*) Total_Employee from Employee
group by department

select * from Employee




select name,count(*) Total_Employee from Employee
group by name




select name,sum(salary) Total_Salary from Employee
group by name


select name,count(*) Total_employee from Employee
group by name

select name,gender,sum(salary) total_salary from Employee
group by gender,name   

---- Rule of group by is :-

--Jab hum GROUP BY lagaenge to hum saare column ko select nahi karsakte
--- hun us hi column ko select kar sakte hai jis column pe group by laga hoga
---- ya fir aggregate function waale column ko select kar sakte hai
----  SUM, MAX, MIN, COUNT, AVERAGE  are aggregate function

select * from Employee


select count(name),gender,sum(salary) total_salary from Employee
group by gender



select count(name) as Total_Gender,gender,sum(salary) total_salary from Employee
group by gender


select name,gender,sum(salary) total_salary from Employee
group by gender,name


select count(name),gender,sum(salary) total_salary from Employee
group by gender,name


select count(name),department total_employee from Employee
group by department


--- WHERE  ka us ehum karte hai TABLE pe condition lagane ko  -- 

-- and	HAVING ka hum karte hai GROUP pe condition lagane ki  -- WITHOUT GROUP THERE IS NO HAVING

select * from Employee


select gender,sum(salary) total_salary from Employee where salary > 3500
group by gender having sum(salary) >12000



-----------------------------------------------------------------------

select * from Employee

--  how to remove duplicate records   ### ask in interview  most




select max(id),name,gender,salary,department from Employee
group by name,gender,salary,department

delete from Employee where  not id in(select max(id) from Employee
group by name,gender,salary,department)  --- Most asked  in interview  rakha hua  how to delete duplicate records

				----- OR

delete from Employee where  not id in(select min(id) from Employee
group by name,gender,salary,department) 

--------------------------------------------------------------------

select max(salary) from Employee
select min(salary) from Employee
select sum(salary) from Employee
select avg(salary) from Employee
select count(salary) from Employee

select * from Employee  order by name  --- alphabetical order or any order

-- ascending order  by default

select * from Employee order by salary


select * from Employee order by salary  desc


select * from Employee  order by name desc


select top(2)* from Employee  


select top(5)* from Employee  

select * from Employee order by id  desc


select top(2)* from Employee order by id  desc


select salary from Employee order by salary desc

select salary from Employee  order by salary desc


select top(3)salary from Employee  order by salary desc



select min(salary) from
(select top(3)salary from Employee  order by salary desc)ABC



select top(1) salary from
(select top(3)salary from Employee  order by salary desc)ABC order by salary asc














