create database dropdown
use dropdown

create table patient
(
id int primary key identity,
name varchar(50),
bloodgroup int,
country int,
)

create proc sp_patient_insert
@name  varchar(50),
@bloodgroup int,
@country int

as
begin
insert into patient(name,bloodgroup,country)values(@name,@bloodgroup,@country)
end

create proc sp_patient_get
as
begin
select * from patient
end

select * from patient
