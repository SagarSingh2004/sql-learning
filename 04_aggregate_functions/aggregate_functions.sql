-- Topic: Aggregate Functions
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Display the total number of employees
select count(*) as total_employees from employees;

-- Q2. Display the total salary paid to all employees
select sum(salary) as total_salary_paid from employees;

-- Q3. Display the average salary of employees
select avg(salary) as avg_salary from employees;

-- Q4. Display the minimum salary in the company
select min(salary) as min_salary from employees;

-- Q5. Display the maximum salary in the company
select max(salary) as max_salary from employees;

-- Q6. Display the number of employees in each department
select department, count(department) as count_department from employees group by department;

-- Q7. Display the average salary for each department
select department, avg(salary) as avg_salary from employees group by department;

-- Q8. Display departments whose average salary is greater than 60000
select department, avg(salary) as avg_salary from employees group by department Having avg(salary)>60000; 

-- Q9. Display the department with the highest total salary payout
select department, sum(salary) as total_salary from employees group by department order by sum(salary) desc limit 1;

-- Q10. Display the difference between the highest and lowest salary
select (max(salary)-min(salary)) as diff from employees;