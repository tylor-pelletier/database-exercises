SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT first_name, last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY last_name;


SELECT first_name, last_name, COUNT(*)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;

-- Notes

-- SELECT last_name, first_name
-- FROM employees
-- GROUP BY last_name, first_name;
--
-- SELECT first_name, COUNT(first_name)
-- FROM employees
-- WHERE first_name NOT LIKE '%a%'
-- GROUP BY first_name;
--
-- SELECT hire_date, COUNT(*)
-- FROM employees
-- GROUP BY hire_date
-- ORDER BY COUNT(*) DESC
-- LIMIT 10;