-- Topic: Window Functions
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Display employee name, department, salary, and rank of salary within their department (highest salary = rank 1)
select name, department, salary,
rank() over(partition by department order by salary desc) as salary_rank
from employees;

-- Q2. Show employee name, department, salary, and row number within each department ordered by salary descending
select name, department, salary,
row_number() over(partition by department order by salary desc) as row_number
from employees;

-- Q3. Display employee name, department, salary, and dense rank of salary within each department
select name, department, salary,
dense_rank() over(partition by department order by salary desc) as salary_rank
from employees;

-- Q4. Show employee name, department, salary, and cumulative sum of salary within each department ordered by join_date
select name, department, salary,
sum(salary) over(partition by department order by join_date) as cum_sum
from employees;

-- Q5. Display employee name, department, salary, and average salary of their department using a window function
select name, department, salary,
round(avg(salary) over(partition by department),2) as avg_salary
from employees;

-- Q6. Show employee name, salary, and first salary in their department (ordered by join_date)
select name, salary,
first_value(salary) over(partition by department order by join_date)
from employees;

-- Q7. Display employee name, salary, and last salary in their department (ordered by join_date)
select name, salary,
last_value(salary) over(partition by department order by join_date rows between unbounded preceding and unbounded following)
from employees;

-- Q8. Show employee name, salary, and salary of the next employee in the same department (lead function)
select name, salary,
lead(salary,1) over(partition by department order by salary)
from employees;

-- Q9. Show employee name, salary, and salary of the previous employee in the same department (lag function)
select name, salary,
lag(salary,1) over(partition by department order by salary)
from employees;

-- Q10. Display employee name, salary, department, and difference between their salary and the previous employee's salary in their department
select name, salary,
(salary - lag(salary,1) over(partition by department order by salary)) as salary_diff
from employees;