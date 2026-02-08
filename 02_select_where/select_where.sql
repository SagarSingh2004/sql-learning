-- Topic: SELECT and WHERE clause
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Display all records from the employees table
select * from employees;

-- Q2. Display only emp_id, name, and department
select emp_id, name, department from employees;

-- Q3. Display employees who belong to the IT department
select * from employees where department='IT';

-- Q4. Display employees whose salary is greater than 60000
select * from employees where salary>60000;

-- Q5. Display employees who joined after 2021-01-01
select * from employees where join_date>'2021-01-01';

-- Q6. Display employees from HR department with salary less than 50000
select * from employees where department = 'HR' and salary<50000;

-- Q7. Display employee names and job roles from Finance department
select name, job_role from employees where department='Finance';

-- Q8. Display employees whose salary is between 50000 and 70000
select * from employees where salary between 50000 and 70000;

-- Q9. Display employees whose department is IT or Sales
select * from employees where department in ('IT','Sales');

-- Q10. Display employees whose name starts with 'A'
select * from employees where name like 'A%'