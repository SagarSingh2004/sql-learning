# SQL Topic: Modifying Data

## Database & Table
- **Database:** PostgreSQL
- **Table used:** employees_dummy

## Description
This folder contains queries to **modify table data** in PostgreSQL using:
- `DELETE` – Remove rows based on conditions or subqueries.
- `INSERT` – Add new rows to the table, with options for returning inserted data and conditional inserts.
- `UPDATE` – Modify existing rows, including single or multiple columns, conditional updates, and returning updated rows.

## Queries Included

### DELETE
- Q1: Delete an employee by emp_id
- Q2: Delete all employees from Sales department
- Q3: Delete employees whose salary is less than 45000
- Q4: Delete employees who joined before 2022
- Q5: Delete employees whose department does not exist in departments table
- Q6: Delete all records from employees_dummy (without dropping table)
- Q7: Delete employees using a subquery
- Q8: Delete employees and return deleted rows
- Q9: Delete only one row using LIMIT-like logic
- Q10: Delete duplicate employees based on name

### INSERT
- Q1: Insert a new employee with all columns
- Q2: Insert a new employee by specifying column names
- Q3: Insert multiple employees in a single query
- Q4: Insert an employee without salary
- Q5: Insert an employee with CURRENT_DATE as join_date
- Q6: Insert an employee and return the inserted row
- Q7: Insert an employee and return only emp_id and name
- Q8: Insert an employee with salary increased by 10% of 50000
- Q9: Insert an employee only if emp_id does not already exist
- Q10: Insert data into employees_dummy from employees table

### UPDATE
- Q1: Increase salary of all IT employees by 10%
- Q2: Update salary to 60000 for employee named 'Rohit'
- Q3: Update job_role to 'Senior Developer' for IT employees earning more than 55000
- Q4: Update department to 'Support' where job_role is 'Tester'
- Q5: Update salary to NULL for Sales department
- Q6: Update multiple columns (salary + job_role) for one employee
- Q7: Increase salary by 5000 for employees who joined before 2022
- Q8: Update salary based on average salary of the department
- Q9: Update only one row using emp_id
- Q10: Update salary and return updated rows