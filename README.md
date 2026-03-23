# HR Employee Attrition Analysis — SQL Project

## Project Overview
Performed end-to-end SQL analysis on IBM HR Analytics 
dataset to identify key factors driving employee 
attrition across departments, job roles, demographics 
and work patterns.

## Dataset
- Source: Kaggle — IBM HR Analytics
- Records: 1,470 employees
- Columns: 35 attributes
- Tool Used: MySQL, MySQL Workbench

## Business Questions Solved
1. What is the overall attrition rate?
2. Which department has highest attrition?
3. What is average salary by department?
4. Which job role has highest attrition rate?
5. Do frequent travelers leave more than others?
6. What is average age of employees who left vs stayed?
7. Which education field has most attrition?
8. Rank employees by salary within each department
9. Which departments pay below company average salary?
10. Who are top 3 highest paid in each job role?

## Key Insights
- Overall attrition rate is 16.12% (237/1470 employees)
- Sales department has highest attrition at 20.63%
- Sales Representatives leave at 39.76% — highest of all roles
- Employees who travel frequently leave 3x more than 
  non-travelling employees (24.91% vs 8.00%)
- Younger employees leave more — avg age 33.61 (left) 
  vs 37.56 (stayed)
- R&D is largest department but pays below company 
  average salary (₹6,281 vs ₹6,502)
- Despite lowest pay, R&D has lowest attrition (13.84%)

## SQL Concepts Used
- Aggregations (COUNT, SUM, AVG, ROUND)
- GROUP BY and HAVING
- CASE WHEN for conditional counting
- Window Functions — RANK() OVER()
- PARTITION BY for department wise ranking
- CTEs — single and multiple
- ORDER BY DESC
- Subqueries and filters

## Tools Used
MySQL, MySQL Workbench
