-- Topic: VIEWS
-- Database: PostgreSQL
-- Tables used: employees, departments

-- Q1. Create a view that displays employee name, department, and manager
create view vw_name_dept_manager as
select e.name, e.department, d.manager
from employees e
inner join
departments d
on e.department=d.department_name;

select * from vw_name_dept_manager;

-- Q2. Create a view that shows only IT department employees
create view vw_it_employees as
select * from employees where department='IT';

select * from vw_it_employees;

-- Q3. Create a view that shows department-wise average salary
create view vw_dept_wise_avg_salary as
select department, round(avg(salary),2) as avg_salary from employees group by department;

select * from vw_dept_wise_avg_salary;

-- Q4. Create a view for employees who joined after 2021-01-01
create view vw_joined_after_2021_01_01 as
select * from employees where join_date>'2021-01-01';

select * from vw_joined_after_2021_01_01;

-- Q5. Create a view that shows employee name, job role, and salary
create view vw_name_role_salary as
select name, job_role, salary from employees;

select * from vw_name_role_salary;

-- Q6. Create a view combining employees and departments using JOIN
create view vw_comb_emp_dept as
select *
from employees e
inner join
departments d
on e.department=d.department_name;

select * from vw_comb_emp_dept;

-- Q7. Create a view that hides salary information (security use case)
create view vw_emp_public_info as
select emp_id, name, department, job_role, join_date from employees;

select * from vw_emp_public_info;

-- Q8. Create a view that shows only employees earning more than 60000
create view vw_emp_earn_more_thn_60000 as
select * from employees where salary>60000;

select * from vw_emp_earn_more_thn_60000;

-- Q9. Create a view to show total number of employees in each department
create view dept_wise_employees as
select department, count(*) as total_employees from employees group by department;

select * from dept_wise_employees;

-- Q10. Drop a view
drop view if exists vw_employees;