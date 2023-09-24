
-- UC1 Create a payroll service database
  create database payroll_service

-- UC2 create a employee payroll table
  create table employee_payroll(id int primary key identity(1,1), name varchar(20), salary float, start_data datetime)
 
 -- UC3 create employee payroll data in the payroll service database
   insert into employee_payroll values('aditya',20000,'2023-08-09'),('shitil', 25000,'2022-05-23')

 -- UC4 ability to retrieve all the employee payroll data
  select * from employee_payroll

 -- UC5 ability to retrieve salary data for a particular employee as well as all employee who have joined 
   insert into employee_payroll values('bill', 53000,'2021-04-26')
   select salary from employee_payroll where name ='bill'
   select * from employee_payroll where start_data between CAST('2022-01-01' as date) and getdate()

 -- UC6 ability to add Gender to Employee payroll table and update the rows
   alter table employee_payroll add gender char
   update employee_payroll set gender ='M' where name='bill'

 --UC7 ability to ind sum, average, min, max and number of male and female employee
   select sum(salary) from employee_payroll where gender='F' group by gender
   select AVG(salary) from employee_payroll where gender='M' group by gender
   select min(salary) from employee_payroll where gender='M' group by gender
   select max(salary) from employee_payroll where gender ='M' group by gender
   select count(gender) from employee_payroll where gender ='M' group by gender
   select count(gender) from employee_payroll where gender ='F' group by gender

