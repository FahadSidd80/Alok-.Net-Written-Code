use MVC_4507May_dropdown


sp_helptext sp_tblstate_get

  
CREATE proc sp_tblstate_get  
@cid int  
as  
begin  
select * from tblstate where cid=@cid  
end


sp_helptext  sp_Employee_insert

  
create proc sp_Employee_insert  
  
@name varchar(50),  
@email varchar(50),  
@age int,  
@country int,  
@state int,  
@gender int  
  
as  
begin   
insert into Employee(name,email,age,country,state,gender)values(@name,@email,@age,@country,@state,@gender)  
end


 sp_helptext sp_Employee_get

CREATE proc sp_Employee_get  
  
as  
begin   
select * from Employee  
join tblcountry on Employee.country=tblcountry.cid  
join tblstate on Employee.state=tblstate.sid  
end


create proc sp_Employee_delete  
@id int  
  
as  
begin   
delete from Employee where id=@id  
end


 sp_helptext 
  sp_Employee_edit

    
create proc sp_Employee_edit  
@id int  
  
as  
begin   
select * from Employee where id=@id  
end


  sp_helptext  sp_Employee_update

  create proc sp_Employee_update  
@id int,  
@name varchar(50),  
@email varchar(50),  
@age int,  
@country int,  
@state int,  
@gender int  
  
as  
begin   
update Employee set name=@name,email=@email,age=@age,country=@country,state=@state,gender=@gender where id=@id  
end



sp_helptext  sp_tblcountry_get

create proc sp_tblcountry_get  
  
as  
begin  
select * from tblcountry  
end
