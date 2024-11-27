/*1.Create a database named company and a table named employees with the following 
fields:*/
id(INT,Primary key,Auto Increment)
name(VARCHAR(100))
position(VARCHAR(100))
salary(DECIMAL(10,2))
date_of_joining(DATE)
                            
Create database company;
use company;
create table employees(
id int primary key auto_increment,
name varchar(100),
position varchar (100),
salary decimal(10,2),
date_of_joining Date);
select* from employees;

/*2.Insert the following data into the employees table:*/
john Doe, Manager, 55000.00, 2020-01-15
jane Smith, Developer, 48000.00, 2019-07-10
Alice johnson, Designer, 45000.00, 2021-03-22
Bob Brown, Developer, 50000.00, 2018-11-01

Insert into employees(id,name,position,salary,date_of_joining)values
(1,"John Doe","Manager","55000","2020-01-15"),
(2,"Jane Smith","Developer","48000","2019-07-10"),
(3,"Alice Johnson","Designer","450000","2021-03-22"),
(4,"Bob Brown","Developer","50000","2018-11-01");
select* from employees; 

/*3.Write a query to retrieve all employees who are Developers.*/
select* from employees where position="developer";

/*4.Write a query to update the salary of Alice johnson to 46000.00.*/
set sql_safe_updates=0;
/*2020-01-15*/
update employees
set salary=46000 where name="Alice johnson";

/*5.Write a query to delete the employee record for Bob Brown.*/
delete from employees where name="Bob brown";
select* from employees;

/*6.Write a query to find the employees who have a salary greater then 48000.*/
select * from employees where salary>48000;

/*7.Write a query to add a new column email to the employees table.*/
alter table employees
add Email varchar(91);

/*8.Write a query to update the email for john Doe to john.doe@company.com*/
update employees
set Email="john.doe@company.com" where id=1;

/*9. write a query to retrieve only the name and salary of all employees.*/
select name,salary from employees;

/*10.write a query to count the number of employees who joined after january 1,2020.*/
select count(date_of_joining) from employees where date_of_joining>"2020-01-01";

/*11.write a query to order the employees by salary in descending order.*/
select * from employees order by salary desc;

/*12. write a query to drop the email column from the employee table.*/
alter table employees
drop column email;
select* from employees;

/* 13.Write a query to find the employee with the higest salary*/
select name from employees order by salary desc limit 1;









+

