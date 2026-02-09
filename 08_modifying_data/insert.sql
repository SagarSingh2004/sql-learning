-- Topic: INSERT
-- Table: employees_dummy

select * from employees_dummy;

-- Q1. Insert a new employee with all columns
insert into employees_dummy(name, department, job_role, salary, join_date)values
	('Sagar', 'IT', 'ML Engineer', 100000, current_date);

-- Q2. Insert a new employee by specifying column names
insert into employees_dummy(name, department, job_role, salary, join_date) values
	('Ashutosh', 'Civil', 'Intern', 10000, current_date);

-- Q3. Insert multiple employees in a single query
insert into employees_dummy(name, department, job_role, salary, join_date)values
	('Varsha', 'Medical', 'Intern', 10000, current_date),
	('Mahi', 'Accounts', 'Intern', 10000, current_date);

-- Q4. Insert an employee without salary (NULL salary)
insert into employees_dummy(name, department, job_role, join_date) values
	('Jatin', 'IT', 'Developer', current_date);

-- Q5. Insert an employee with CURRENT_DATE as join_date
insert into employees_dummy(name, department, job_role, salary, join_date) values
	('Mohit', 'Civil', 'Intern', 100000, current_date);

-- Q6. Insert an employee and return the inserted row
insert into employees_dummy(name, department, job_role, salary, join_date) values
	('Raj', 'Civil', 'Intern', 100000, current_date)
returning *;

-- Q7. Insert an employee and return only emp_id and name
insert into employees_dummy(name, department, job_role, salary, join_date) values
	('Raju', 'Civil', 'Intern', 100000, current_date)
returning emp_id, name;

-- Q8. Insert an employee with salary increased by 10% of 50000
insert into employees_dummy(name, department, job_role, salary, join_date) values
	('Vinod', 'Civil', 'Intern', 1.1*50000, current_date);

-- Q9. Insert an employee only if emp_id does not already exist
insert into employees_dummy(emp_id, name, department, job_role, salary, join_date)
select 15, 'Akansha', 'HR', 'Intern', 10000, current_date+1
where not exists (select 1 from employees_dummy where emp_id = 15);

-- Q10. Insert data into employees_dummy from employees table (subquery)
insert into employees_dummy(name, department, job_role, salary, join_date)
select name, department, job_role, salary, join_date
from employees e
where not exists (select 1 from employees_dummy d where e.name=d.name);