use dbJquery240321

select * from sys.objects where type='P'




sp_helptext sp_employee_update
  
create proc sp_employee_delete  
@empid int  
  
as  
begin   
delete from employee where empid=@empid  
  
alter proc sp_employee_update  
@empid int,  
@name varchar(50),  
@address varchar(50),  
@age int  
as  
begin   
update employee set name=@name,address=@address,age=@age   where empid=@empid
end  

end