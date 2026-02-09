-- Table: employees
-- emp_id, name, department, job_role, salary, join_date

-- Created employees table
create table employees(
	emp_id serial primary key,
	name varchar(30),
	department varchar(30),
	job_role varchar(40),
	salary int,
	join_date date
);

--inserting values into employees
insert into employees(name, department, job_role, salary, join_date) Values
	('Amit', 'IT', 'Software Engineer', 60000, '2022-01-10'),
	('Neha', 'HR', 'HR Executive', 45000, '2021-03-15'),
	('Raj', 'Finance', 'Accountant', 55000, '2020-07-20'),
	('Sita', 'IT', 'Senior Developer', 75000, '2019-11-05'),
	('Karan', 'HR', 'HR Recruiter', 40000, '2023-02-01'),
	('Pooja', 'Finance', 'Financial Analyst', 65000, '2021-09-18'),
	('Ravi', 'IT', 'Backend Developer', 58000, '2022-06-25'),
	('Anjali', 'Sales', 'Sales Executive', 42000, '2023-01-12'),
	('Mohit', 'Sales', 'Sales Manager', 70000, '2020-04-30'),
	('Priya', 'IT', 'Data Analyst', 62000, '2021-12-05');

--retrieving the table
select * from employees;