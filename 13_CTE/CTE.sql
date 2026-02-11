-- Topic: Common Table Expressions (CTE)
-- Table used: employees
-- Database: PostgreSQL


-- ==============================
-- Basic CTE Questions
-- ==============================

-- Q1. Create a CTE to calculate the average salary of all employees 
--     and display employees earning more than the overall average salary.
with my_cte as (select avg(salary) as avg_salary from employees)
select * from employees where salary>(select avg_salary from my_cte);

-- Q2. Use a CTE to calculate department-wise total salary 
--     and select departments where total salary is greater than 200000.
with my_cte as (select department, sum(salary) as total_salary from employees group by department)
select department from my_cte where total_salary>200000;

-- Q3. Create a CTE to calculate department-wise employee count 
--     and display departments having more than 3 employees.
with my_cte as (select department, count(*) as emp_count from employees group by department)
select department from my_cte where emp_count>3;

-- Q4. Using a CTE, find employees earning more than their department average salary.
with my_cte as (select name, department, salary, avg(salary) over(partition by department) as avg_salary from employees)
select name, department from my_cte where salary>avg_salary;

-- Q5. Create a CTE that finds the maximum salary in each department 
--     and display employees who earn that maximum salary.
with my_cte as (select name, department, salary, max(salary) over(partition by department) as max_sal from employees)
select * from my_cte where salary=max_sal;


-- ==============================
-- CTE + Window Functions
-- ==============================

-- Q6. Create a CTE to assign rank to employees based on salary within each department 
--     and display the top 3 employees per department.
with my_cte as (select name, department, salary, dense_rank() over(partition by department order by salary desc) as rnk from employees)
select name, department, salary, rnk from my_cte where rnk<=3;

-- Q7. Using a CTE, find the second highest salary in each department.
with my_cte as (select name, department, salary, dense_rank() over(partition by department order by salary desc) as rnk from employees)
select name, department, salary, rnk from my_cte where rnk=2;

-- Q8. Create a CTE to calculate cumulative salary within each department ordered by join_date.
with my_cte as (select name, department, join_date, sum(salary) over(partition by department order by join_date) as cum_sum from employees)
select * from my_cte;

-- Q9. Using a CTE, calculate salary difference between each employee and the previous employee 
--     in the same department.
with my_cte as (select name, department, salary,
lag(salary) over(partition by department order by salary) as prev_salary from employees)
select name,department, salary, prev_salary, salary - prev_salary as diff from my_cte;


-- Q10. Create a CTE to find employees whose salary is greater than the average salary 
--      of the top 3 earners in their department.
with my_cte as (select name, salary, department, row_number() over(partition by department order by salary desc) as rnk from employees),
top3_avg as (select department, avg(salary) as top3_avg from my_cte where rnk<=3 group by department)
select m.name, m.salary, m.department
from my_cte m
join top3_avg t
on m.department=t.department
where m.salary>t.top3_avg;

-- ==============================
-- Multiple CTEs
-- ==============================

-- Q11. Use multiple CTEs:
--      First CTE calculates department-wise average salary.
--      Second CTE selects employees earning above department average.
with my_cte as (select department, avg(salary) as avg_sal from employees group by department),
second_cte as (
select e.name, e.department, e.salary
from employees e
join my_cte m
on e.department = m.department
where e.salary>m.avg_sal)
select * from second_cte;

-- Q12. Use multiple CTEs to:
--      1) Calculate department-wise total salary
--      2) Rank departments based on total salary
--      3) Display the top 2 departments by total salary.
with my_cte as (select department, sum(salary) as total_sal from employees group by department),
second_cte as (select department, total_sal, dense_rank() over(order by total_sal desc) as rnk from my_cte),
third_cte as (
select department, total_sal, rnk
from second_cte s where s.rnk<=2)
select * from third_cte;


-- ==============================
-- Recursive CTE (Advanced)
-- ==============================

-- Q13. Create a recursive CTE to generate numbers from 1 to 10.
with recursive my_cte as (
select 1 as n
union all
select n+1 from my_cte where n<10
)
select * from my_cte

-- Q14. Create a recursive CTE to generate a sequence of dates 
--      starting from '2024-01-01' for 7 days.
with recursive my_cte as (
select date '2024-01-01' as dt
union all
select dt + 1 from my_cte where dt< date '2024-01-07'
)
select * from my_cte;