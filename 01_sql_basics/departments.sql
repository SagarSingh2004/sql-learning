-- Table: departments
-- department_id, department_name, manager

--creating the table
create table departments(
	department_id int primary key,
	department_name varchar(30),
	manager varchar(30)
);

-- Inserting data into departments table
insert into departments(department_id, department_name, manager) values
	(101, 'IT', 'Vikram'),
	(102, 'HR', 'Neha'),
	(103, 'Finance', 'Rakesh'),
	(104, 'Sales', 'Anjali');