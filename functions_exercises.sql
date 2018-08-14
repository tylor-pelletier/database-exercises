USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT CONCAT(DATEDIFF(CURDATE(), hire_date), ' DAYS')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(first_name, ' ', last_name, ' has been working for the company for ', DATEDIFF(CURDATE(), hire_date), ' days.')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

-- Notes
--
-- SELECT CONCAT('Hello ', 'World', '!');
--
-- SELECT now();
--
-- SELECT CURDATE();
--
-- SELECT CONCAT(
--     'Teaching people to code for ',
--     UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
--     ' seconds'
-- );