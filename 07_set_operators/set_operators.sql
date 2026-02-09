-- Topic: Set Operators
-- Tables used: employees, departments
-- Database: PostgreSQL

-- Q1. Display a list of all departments and all distinct employee departments
select department from employees
union
select department_name from departments;

-- Q2. Display departments that are present in employees but not in departments table
select department from employees
except
select department_name from departments;

-- Q3. Display common departments between employees and departments
select department from employees
intersect
select department_name from departments;

-- Q4. Display all employees from IT and HR departments
select * from employees where department='IT'
union
select * from employees where department='HR';

-- Q5. Display employees who are only in IT department but not in HR
select * from employees where department = 'IT'
except
select * from employees where department = 'HR';

-- Q6. Display all unique job roles from employees table
select job_role from employees
union
select job_role from employees where job_role is not null;

-- Q7. Display employees in IT or Sales who are also earning more than 60000
select * from employees where department in ('IT','Sales')
intersect
select * from employees where salary > 60000;

-- Q8. Display departments with employees having salary > 50000 or managed by 'Neha'
select department from employees where salary>50000
union
select department_name from departments where manager='Neha'; 

-- Q9. Display departments that are in either employees or departments table but not both
(select department from employees
 except
 select department_name from departments)
union
(select department_name from departments
 except
 select department from employees);


-- Q10. Display all employees whose department is either IT or HR, removing duplicates
select * from employees where department = 'IT'
union
select * from employees where department = 'HR';