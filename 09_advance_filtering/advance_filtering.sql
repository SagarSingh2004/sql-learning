-- Topic: Advanced Filtering
-- Table used: employees
-- Database: PostgreSQL

-- Q1. Flag employees as 'High' or 'Low' salary (threshold 60000)
select name,
case
	when salary>60000 then 'High'
	else 'Low'
end as salary_flag
from employees;

-- Q2. Flag employees as 'Experienced' if joined before 2020, else 'New'
select name,
case
	when extract (year from join_date) < 2020 then 'Experienced'
	else 'New'
end as experience_flag
from employees;

-- Q3. Replace NULL salaries with 0 using COALESCE
select name, coalesce(salary,0) as salary from employees;

-- Q4. Replace NULL department with 'Unknown'
select name, coalesce(department,'Unknown') as department from employees;

-- Q5. Count distinct departments
select count(distinct department) as count_distinct_department from employees;

-- Q6. Sum of unique salaries
select sum(distinct salary) as total_unique_salary from employees;

-- Q7. Display employees joined before 2022
select * from employees where date_part('year', join_date)<2022;

-- Q8. Count employees joined in each year
select extract(year from join_date) as join_date, count(*) as total_emp from employees group by extract(year from join_date);

-- Q9. Display employees whose salary is greater than the average salary of their department
select * from employees e1 where salary>(select avg(salary) from employees where department=e1.department);

-- Q10. Show department-wise maximum and minimum salaries
select department,
max(salary) as max_salary,
min(salary) as min_salary
from employees
group by department;