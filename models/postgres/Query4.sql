SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary,
RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) as Salary_Rank
FROM snowflake__my_schema.employees as e
INNER JOIN
snowflake__my_schema.departments as d ON e.department_id = d.department_id