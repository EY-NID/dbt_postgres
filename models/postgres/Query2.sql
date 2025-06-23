SELECT d.department_id, d.department_name, Max(e.salary) as Max_Salary, Min(e.salary) as Min_Salary FROM snowflake__my_schema.departments as d
INNER JOIN
snowflake__my_schema.employees as e ON d.department_id = e.department_id
Group by d.department_id,d.department_name