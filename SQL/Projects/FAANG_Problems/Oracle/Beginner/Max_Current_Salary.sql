-- SQL FAANG Problems
-- Company: Oracle
-- Level: Beginner
-- Problem: Maximum Current Salary by Department
-- Date: 2026-11-24
-- Status: Passed

SELECT
    d.department_name,
    MAX(s.salary_amount) AS max_salary
FROM oracle_departments d
LEFT JOIN oracle_employees e
    ON d.department_id = e.department_id
LEFT JOIN oracle_salaries s
    ON e.employee_id = s.employee_id
WHERE s.end_date IS NULL
GROUP BY d.department_name
ORDER BY max_salary DESC;