SELECT CONCAT(last_name, ', ', first_name) AS 'full_name', birth_date AS DOB
FROM employees
LIMIT 10;

SELECT CONCAT(emp_no, ' -  ', last_name, ', ', first_name) AS 'full_name', birth_date AS DOB
FROM employees
LIMIT 10;

-- Notes

-- SELECT CONCAT_WS(' ', emp_no, first_name, last_name, hire_date) AS employee_work_info
-- FROM employees
-- LIMIT 50;