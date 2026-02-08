-- Topic: ORDER BY, LIMIT, OFFSET
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Display all employees ordered by salary in ascending order
select * from employees order by salary;

-- Q2. Display all employees ordered by salary in descending order
select * from employees order by salary desc;

-- Q3. Display employees ordered by join_date (oldest first)
select * from employees order by join_date;

-- Q4. Display employees ordered by join_date (most recent first)
select * from employees order by join_date desc;

-- Q5. Display top 3 highest paid employees
select * from employees order by salary desc limit 3;

-- Q6. Display top 5 lowest paid employees
select * from employees order by salary asc limit 5;

-- Q7. Display the second highest paid employee
select * from employees order by salary desc limit 1 offset 1;

-- Q8. Display employees ordered by department (A–Z) and salary (high to low)
select * from employees order by department, salary desc;

-- Q9. Display the first 3 employees after skipping the first 2 records
select * from employees order by join_date limit 3 offset 2;

-- Q10. Display employees from IT department ordered by salary descending
select * from employees where department = 'IT' order by salary desc;