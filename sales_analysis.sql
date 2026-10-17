-- Project: Employee Sales Performance Analysis
-- Objective: Compare employee sales with department averages.

WITH employee_total AS (
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
        e.department
),
department_comparison AS (
    SELECT
        employee_id,
        name,
        department,
        total_sales,
        AVG(total_sales) OVER (
            PARTITION BY department
        ) AS department_average
    FROM employee_total
)
SELECT
    employee_id,
    name,
    department,
    total_sales,
    department_average,
    CASE
        WHEN total_sales > department_average
            THEN 'Above Average'
        WHEN total_sales = department_average
            THEN 'Equal to Average'
        ELSE 'Below Average'
    END AS comparison_result
FROM department_comparison
ORDER BY department, total_sales DESC;
