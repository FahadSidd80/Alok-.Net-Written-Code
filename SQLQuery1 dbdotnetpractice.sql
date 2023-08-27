use dbDotNetPractice


create table patient
(
id int primary key identity,
name varchar(50),
age int,
gender int,
country int,
state int,
city int,
mobilno bigint,
disease int,
patientimage varchar(100),
patientform varchar(100),
email varchar(50),
password varchar(50),
confirmpassword varchar(50)

)

select * from patient


create proc sp_patient_insert

@name varchar(50),
@age int,
@gender int,
@country int,
@state int,
@city int,
@mobileno bigint,
@disease int,
@patientimage varchar(100),
@patientform varchar(100),
@email varchar(50),
@password varchar(50),
@confirmpassword varchar(50)

as
begin 
insert into patient(name,age,gender,country,state,city,mobileno,disease,patientimage,patientform,email,password,confirmpassword)values(@name,@age,@country,@mobileno,@patientform,@email,@password,@confirmpassword)
end


