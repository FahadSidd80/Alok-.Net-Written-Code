create database db_10421

use db_10421

create table tblstudent
(
id int primary key identity,
nam varchar(50),
city varchar(50),
age int
)

select * from tblstudent