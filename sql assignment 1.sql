# Q.1.Create a New Database and  Table for Employees

#Task: Create a new database named company_db and Create a table named employees with the following
#columns:

create database company_db;
use company_db;
create table employees(
employee_id int,
first_name varchar (50),
last_name varchar (50),
department varchar (50),
salary int,
hire_date date);
select * from employees;


#Q2. Insert Data into Employees Table

#Task: Insert the following sample records into the employees table.



insert into employees(employee_id,first_name,last_name,department,salary,hire_date)
values
(101,'Amit','Sharma','HR',50000,'2020-01-15'),
(102,'Riya','Kapoor','Sales',75000,'2019-03-22'),
(103,'Raj','Mehta','IT',90000,'2018-07-11'),
(104,'Neha','Verma','IT',85000,'2021-09-01'),
(105,'Arjun','Singh','Finance',60000,'2022-02-10');

select * from employees

# Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)

# Hint: Use the order by clause on the salary column.

select * from employees
order by salary asc


 # Q.4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)
 
 select * from employees
 order by department asc,salary desc
 
 
 # Q.5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
 
 select * from employees
 where department='IT'
 ORDER BY hire_date asc
 
 #Q.6. Create and Populate a Sales Table

#Task: Create a table sales to track sales data:

create table sales(
sale_id int,
customer_name varchar(50),
amount int,
sale_date date);

insert into sales (sale_id,customer_name,amount,sale_date)
values
(1,'Aditi',1500,'2024-08-01'),
(2,'Rohan',2200,'2024-08-03'),
(3,'Aditi',3500,'2024-09-05'),
(4,'Meena',2700,'2024-09-15'),
(5,'Rohan',4500,'2024-09-25');
select * from sales


# Q.7. Display All Sales Records Sorted by Amount (Highest → Lowest)

select * from sales
order by amount desc


# Q.8.Show All Sales Made by Customer “Aditi”

select * from sales
where customer_name='Aditi'


# Q.9.What is the Difference Between a Primary Key and a Foreign Key?

#A primary key uniquely identifies each record in a table, while a foreign key establishes a relationship between two tables by referencing the primary key of another table. In short: primary keys ensure uniqueness within a table, foreign keys enforce referential integrity across tables.


#Q.10. What Are Constraints in SQL and Why Are They Used?

#SQL constraints are rules applied to table columns that enforce data integrity, accuracy, and consistency. They prevent invalid entries, ensure business logic is followed, and maintain reliable database operations.