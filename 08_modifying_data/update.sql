-- Topic: UPDATE
-- Table: employees_dummy

-- Q1. Increase salary of all IT employees by 10%
update employees_dummy
set salary=salary*1.1
where department='IT';

-- Q2. Update salary to 60000 for employee named 'Rohit'
update employees_dummy
set salary=60000
where name='Rohit';

-- Q3. Update job_role to 'Senior Developer' for IT employees earning more than 55000
update employees_dummy
set job_role='Senior Developer'
where department='IT' and salary>55000;

-- Q4. Update department to 'Support' where job_role is 'Tester'
update employees_dummy
set department='Support'
where job_role='Tester';

-- Q5. Update salary to NULL for Sales department
update employees_dummy
set salary = null
where department='Sales';

-- Q6. Update multiple columns (salary + job_role) for one employee
update employees_dummy
set salary=salary*1.1, job_role='Senior'
where name='Sagar';

-- Q7. Increase salary by 5000 for employees who joined before 2022
update employees_dummy
set salary=salary+5000
where extract(year from join_date)<2022;

-- Q8. Update salary based on average salary of the department (subquery)
update employees_dummy as e
set salary=(select avg(salary) from employees_dummy where department=e.department)
where salary is not null;

-- Q9. Update only one row using emp_id
update employees_dummy
set salary = salary*1.1
where emp_id = 10;

-- Q10. Update salary and return updated rows (RETURNING *)
update employees_dummy
set salary = salary*1.1
where department='IT'
returning *;