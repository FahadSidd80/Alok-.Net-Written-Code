create database dbstudent

use dbstudent


create table student
(
id int primary key identity,
name varchar(50),
bloodgroup int,
course int,
)


create proc sp_insert_student
@name varchar(50),
@bloodgroup int,
@course int
as
begin
insert into student(name,bloodgroup,course)values(@name,@bloodgroup,@course)
end

alter proc sp_select_student
as
begin
select * from student

join bloodgroup on student.bloodgroup=bloodgroup.bid

join course on student.course=course.cid
end






create table bloodgroup
(
bid int primary key identity,
bname varchar(50)

)

insert bloodgroup(bname)values('A+')

insert bloodgroup(bname)values('AB+')

insert bloodgroup(bname)values('A-')

insert bloodgroup(bname)values('O+')

insert bloodgroup(bname)values('O-')

insert bloodgroup(bname)values('AB-')

insert bloodgroup(bname)values('B-')

insert bloodgroup(bname)values('B+')

insert bloodgroup(bname)values('A+')

select * from bloodgroup


create proc sp_bloodgroup_select
as
begin
select * from bloodgroup
end






create table course
(
cid int primary key identity,
cname varchar(50)

)

insert course(cname)values('--select--')

insert course(cname)values('MCA')


insert course(cname)values('BCA')

insert course(cname)values('B.TECH')

insert course(cname)values('BBA')

insert course(cname)values('B.COM')

insert course(cname)values('M.TECH')

insert course(cname)values('MBBS')

insert course(cname)values('BUMS')


select * from course

delete from course where cid=9


alter proc sp_course_select
as
begin
select * from course
end

delete from bloodgroup where bid=10



select * from student
select * from bloodgroup
select * from course

select * from student 
join bloodgroup on student.bloodgroup=bloodgroup.bid

join course on student.course=course.cid