# SQL Topic: Window Functions

## Database & Table
- **Database:** PostgreSQL
- **Table used:** employees

## Description
This folder contains SQL queries demonstrating the use of **window functions** in PostgreSQL.  
Window functions perform calculations across a set of related rows while **retaining individual rows**, making them extremely useful for analytics, ranking, and comparisons.

This topic covers ranking, running totals, department-wise analysis, and comparison with previous or next rows.

## Queries Included

- Q1: Display employee name, department, salary, and rank of salary within their department
- Q2: Show employee name, department, salary, and row number within each department
- Q3: Display employee name, department, salary, and dense rank of salary
- Q4: Show cumulative sum of salary within each department ordered by join date
- Q5: Display employee salary along with department-wise average salary
- Q6: Show first salary in each department based on join date
- Q7: Show last salary in each department based on join date
- Q8: Display salary of the next employee in the same department
- Q9: Display salary of the previous employee in the same department
- Q10: Calculate salary difference compared to the previous employee in the same department
