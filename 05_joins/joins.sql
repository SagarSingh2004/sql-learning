-- Topic: Joins
-- Tables used: employees, departments
-- Database: PostgreSQL

-- Q1. Display all employees with their department manager
select e.name, e.department, d.manager
from employees as e
inner join
departments as d
on e.department=d.department_name;

-- Q2. Display all employees, including those whose department manager info is missing
select e.name, e.department, d.manager
from employees as e
left join
departments as d
on e.department=d.department_name;

-- Q3. Display all departments and their employees, including departments with no employees
select e.name, e.department, d.manager
from employees as e
right join
departments as d
on e.department=d.department_name;

-- Q4. Display all employees and all departments, showing NULLs where no match exists
select e.name, e.department, d.manager
from employees as e
full outer join
departments as d
on e.department = d.department_name;

-- Q5. Display employee names along with their department name and manager
select e.name, e.department, d.manager
from employees as e
inner join
departments as d
on e.department = d.department_name;


-- Q6. Display departments with the total number of employees in each
select d.department_name, count(e.emp_id) as count_employees
from employees as e
right join
departments as d
on e.department=d.department_name
group by d.department_name;


-- Q7. Display departments with average employee salary
select d.department_name, round(avg(e.salary),2) as avg_salary
from employees as e
right join
departments as d
on e.department=d.department_name
group by d.department_name;

-- Q8. Display employees whose department manager is 'Neha'
select e.name, e.department, e.salary, d.manager
from employees as e
right join
departments as d
on e.department=d.department_name
where d.manager='Neha';

-- Q9. Display employees who earn more than the average salary of their department
select *
from employees as e
inner join
departments as d
on e.department=d.department_name
where salary>(select avg(e.salary) from employees where department=e.department);

-- Q10. Display employees along with a flag column showing 'High' if salary > 60000, else 'Low'
select *,
case
	when salary>60000 then 'High'
	else 'Low'
end as salary_flag
from employees;