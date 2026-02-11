# SQL Topic: Common Table Expressions (CTE)

## Database & Table
- **Database:** PostgreSQL  
- **Table used:** employees  

## Description
This folder contains SQL queries demonstrating the use of **Common Table Expressions (CTE)** in PostgreSQL.  

CTEs improve query readability and structure by allowing complex logic to be broken into smaller, reusable query blocks. They are especially useful for analytical queries, multi-step transformations, ranking logic, and recursive operations.

This topic covers basic CTE usage, CTE with window functions, multiple CTE chaining, and recursive CTE examples.

---

## Queries Included

- **Q1:** Display employees earning more than the overall average salary  
- **Q2:** Show departments where total salary exceeds a given threshold  
- **Q3:** Display departments having more than a specified number of employees  
- **Q4:** Show employees earning more than their department average salary  
- **Q5:** Display employees earning the maximum salary in each department  
- **Q6:** Rank employees by salary within each department and display top 3  
- **Q7:** Display the second highest salary in each department  
- **Q8:** Show cumulative salary within each department ordered by join date  
- **Q9:** Calculate salary difference compared to the previous employee in the same department  
- **Q10:** Display employees earning more than the average of the top 3 earners in their department  
- **Q11:** Use multiple CTEs to calculate department average salary and filter above-average employees  
- **Q12:** Use multiple CTEs to rank departments by total salary and display the top 2  
- **Q13:** Generate numbers from 1 to 10 using a recursive CTE  
- **Q14:** Generate a sequence of dates using a recursive CTE  