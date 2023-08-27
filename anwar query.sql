create database dbpractice

use dbpractice

create table country
(
cid int primary key identity,
cname varchar(50)
)

insert into country(cname)values('India')
insert into country(cname)values('Pakistan')
insert into country(cname)values('USA')

select * from country