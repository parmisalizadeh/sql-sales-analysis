-- Project: Employee Sales Performance Analysis
-- Purpose: Analyse employee sales and compare performance.

-- 1. Calculate total sales for each employee

SELECT
    e.employee_id,
    e.name,
    e.department,
    SUM(s.amount) AS total_sales
FROM employees e
JOIN employee_sales s
    ON e.employee_id = s.employee_id
GROUP BY
    e.employee_id,
    e.name,
    e.department;
