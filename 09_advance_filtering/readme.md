# SQL Topic: Advanced Filtering

## Database & Table
- **Database:** PostgreSQL
- **Table used:** employees

## Description
This folder contains queries for **advanced filtering** in PostgreSQL, including:

- Using `CASE` statements to create flags or categories.
- Handling `NULL` values with `COALESCE`.
- Counting distinct values.
- Summing unique values.
- Filtering based on date parts.

## Queries Included

- Q1: Flag employees as 'High' or 'Low' salary (threshold 60000)
- Q2: Flag employees as 'Experienced' if joined before 2020, else 'New'
- Q3: Replace NULL salaries with 0 using COALESCE
- Q4: Replace NULL department with 'Unknown'
- Q5: Count distinct departments
- Q6: Sum of unique salaries
- Q7: Display employees joined before 2022
- Q8: Count employees joined in each year
- Q9: Display employees whose salary is greater than the average salary of their department
- Q10: Show department-wise maximum and minimum salaries