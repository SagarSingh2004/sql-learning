-- Topic: Subqueries / Nested Queries
-- Tables used: employees, departments
-- Database: PostgreSQL

-- Q1. Display employees whose salary is greater than the average salary of all employees
select * from employees where salary>(select avg(salary) from employees);

-- Q2. Display employees whose salary is equal to the maximum salary in the company
select * from employees where salary=(select max(salary) from employees);

-- Q3. Display employees who earn less than the average salary of their department
select * from employees as e where salary<(select avg(salary) from employees where e.department=department);

-- Q4. Display employees who joined on the most recent join date
select * from employees where join_date=(select max(join_date) from employees);

-- Q5. Display employees from departments that have more than 2 employees
select * from employees where department in (select department from employees group by department having count(*)>2);

-- Q6. Display employees whose salary is higher than the second highest salary in the company
select * from employees where salary>(select distinct salary from employees order by salary desc limit 1 offset 1);

-- Q7. Display employees who do not belong to the IT or HR department
select * from employees where department not in (select department from employees where department in ('IT', 'HR') );

-- Q8. Display departments with at least one employee earning more than 60000
select distinct department from employees where department in (select department from employees where salary>60000);

-- Q9. Display employees whose department manager is the same as 'Neha'
select * from employees e where department in (select department_name from departments where manager='Neha');

-- Q10. Display employees along with the average salary of their department
select *, (select avg(salary) from employees where e.department=department) as avg_dept_salary from employees e;
