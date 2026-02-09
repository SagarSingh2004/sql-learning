-- Topic: DELETE
-- Table: employees_dummy

-- Q1. Delete an employee by emp_id
delete from employees_dummy
where emp_id=15;

-- Q2. Delete all employees from Sales department
delete from employees_dummy
where department='Sales';

-- Q3. Delete employees whose salary is less than 45000
delete from employees_dummy
where salary<45000;

-- Q4. Delete employees who joined before 2022
delete from employees_dummy
where extract(year from join_date)<2022;

-- Q5. Delete employees whose department does not exist in departments table
delete from employees_dummy e
where not exists (select 1 from departments d where d.department_name=e.department);

-- Q6. Delete all records from employees_dummy (without dropping table)
truncate table employees_dummy;

-- Q7. Delete employees using a subquery
delete from employees_dummy as d
where salary<(select avg(salary) from employees_dummy where department=d.department);

-- Q8. Delete employees and return deleted rows (RETURNING *)
delete from employees_dummy
where department='IT'
returning *;

-- Q9. Delete only one row using LIMIT-like logic (PostgreSQL way)
delete from employees_dummy
where emp_id = ( select emp_id from employees_dummy order by salary limit 1)
returning *;

-- Q10. Delete duplicate employees based on name
delete from employees_dummy
where emp_id not in (select min(emp_id) from employees_dummy group by name);