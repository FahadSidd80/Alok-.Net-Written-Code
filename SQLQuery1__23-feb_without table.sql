
select *,('std'+convert(varchar(50),stid))as Studnt_id from student

select ('Emp'+convert(varchar(50),stid))as stid,name,age,gender,country,state,city,email,password,confirmpassword from student



select * from student

select  stid,name,age,gender,country,state,city,email,password,confirmpassword,row_number()over(order by stid) as SerialNumber
from student

select  stid,UPPER(LEFT(name,1))+ SUBSTRING(name,2,50) as Name,age,gender,country,state,city,email,password,confirmpassword,row_number()over(order by stid) as SerialNumber
from student


select * from student


select upper(name) from  student

select lower(name) from  student
select left(name,3) from student

select right(name,2) from student


select 10,'fahad'
select upper('fahad')
select left('fahad',3)


select 'fahad'
select UPPER('fahad')
select LOWER('fahad')

select right('fahad',2)
select left('fahad',3)

select substring('fahad siddiqui',8,6)
select replace('fahad siddiqui','ddiqu','fahad')
select replace('shifa siddiqui','siddiqui','khan')
select stuff('7518891337',1,7,'********')
select stuff('7518891337',8,10,'XXX')

select reverse('fahad')

select reverse('my name is fahad')

select reverse ('dahaf si eman ym')


select replicate('fahad  ',5)
select replicate('my name is fahad  ',10) 
