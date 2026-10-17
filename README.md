# Employee Sales Performance Analysis

## Project Overview
This project analyses employee sales performance using SQL. The goal is to calculate total sales for each employee and compare individual performance with the average sales of their department.

## Tools Used
- SQL
- SQLite
- GitHub

## Dataset
The project uses two sample CSV files:
- `employees.csv`: employee IDs, names, and departments.
- `employee_sales.csv`: employee IDs, sales dates, and sales amounts.

The dataset contains four employees across two departments: Sales and Marketing.

## Business Questions
1. What are the total sales for each employee?
2. Who are the top-performing employees?
3. What is the average total sales amount for each department?
4. Which employees perform above or below their department average?

## SQL Techniques
- INNER JOIN
- SUM() and GROUP BY
- Common Table Expressions (CTEs)
- CASE WHEN
- Window functions using AVG() OVER (PARTITION BY department)
- ORDER BY

## Key Findings
- John recorded the highest total sales, at 5,500.
- Anna generated 3,500 in sales.
- Sara generated 3,000 in sales.
- Mark recorded the lowest total sales, at 800.
- The average total sales were 4,500 in Sales and 1,900 in Marketing.
- John and Sara performed above their respective department averages, while Anna and Mark performed below them.

## Project Files
- `sales_analysis.sql`: SQL query used for the analysis.
- `employees.csv`: employee information.
- `employee_sales.csv`: sales transaction data.

## Limitations
This is a small sample dataset created for learning purposes. The findings describe only this sample and should not be treated as conclusions about a real business.
