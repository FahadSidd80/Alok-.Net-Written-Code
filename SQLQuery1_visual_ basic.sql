create database servervald
use servervald

create table Employee
(
id int primary key identity,
name varchar(50),
country varchar(50),
salary int
)

select * from Employee