USE employees;

-- EXERCISE 1
SELECT *
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = '101010'
);

-- EXERCISE 2
SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
)
GROUP BY title;

-- EXERCISE 3
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > NOW()
) AND employees.gender = 'F';