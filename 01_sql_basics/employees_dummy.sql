-- Dummy table for practicing INSERT, UPDATE, DELETE
-- Database: PostgreSQL

create table employees_dummy (
    emp_id serial PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    job_role VARCHAR(50),
    salary NUMERIC(10,2),
    join_date DATE
);

insert into employees_dummy(name, department, job_role, salary, join_date) Values
('Amit', 'IT', 'Developer', 60000, '2022-01-10'),
('Neha', 'HR', 'HR Manager', 55000, '2021-05-12'),
('Rohit', 'Finance', 'Analyst', 50000, '2023-03-18'),
('Priya', 'IT', 'Tester', 45000, '2022-11-25'),
('Ankit', 'Sales', 'Sales Exec', 40000, '2023-07-01');

select * from employees_dummy;