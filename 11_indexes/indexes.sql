-- Topic: INDEXES
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Create a simple index on the department column
create index idx_department
on employees(department);

-- Q2. Create a unique index on emp_id
create unique index idx_emp_id
on employees(emp_id);

-- Q3. Create a composite index on department and salary
create index idx_dept_salary
on employees(department, salary);

-- Q4. Create an index on join_date
create index idx_join_date
on employees(join_date);

-- Q5. Create a partial index for employees earning more than 60000
create index idx_earn_more_60000
on employees(salary)
where salary>60000;

-- Q6. Create an index on lower(name) for case-insensitive search
create index idx_low_name
on employees(lower(name));

-- Q7. Drop an index named idx_department if it exists
drop index if exists idx_department;

-- Q8. List all indexes created on the employees table
select indexname, indexdef
from pg_indexes
where tablename = 'employees';