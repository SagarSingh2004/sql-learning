# SQL Topic: Indexes

## Database & Table
- **Database:** PostgreSQL
- **Table used:** employees

## Description
This file demonstrates how to create and manage **indexes** in PostgreSQL. Indexes are used to:

- Speed up query performance by reducing search time.
- Ensure uniqueness of values using unique indexes.
- Support complex searches, filtering, and sorting efficiently.
- Implement partial and functional indexes for specific use cases.

## Queries Included

- Q1: Create a simple index on the `department` column
- Q2: Create a unique index on `emp_id`
- Q3: Create a composite index on `department` and `salary`
- Q4: Create an index on `join_date`
- Q5: Create a partial index for employees earning more than 60000
- Q6: Create an index on `lower(name)` for case-insensitive search
- Q7: Drop an index if it exists
- Q8: List all indexes created on the `employees` table