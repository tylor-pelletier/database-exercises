USE employees;

-- EXERCISE 1
-- join_exercises.sql file created

-- EXERCISE 2
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
  JOIN dept_manager
    ON dept_manager.emp_no = employees.emp_no
  JOIN departments
    ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > NOW()
ORDER BY departments.dept_name ASC;

-- EXERCISE 3
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
  JOIN dept_manager
    ON dept_manager.emp_no = employees.emp_no
  JOIN departments
    ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > NOW() AND employees.gender = 'F'
ORDER BY departments.dept_name ASC;

-- EXERCISE 4
SELECT titles.title AS 'Title', COUNT(titles.title) AS 'Count'
FROM employees
  JOIN titles
    ON titles.emp_no = employees.emp_no
  JOIN dept_emp
    ON dept_emp.emp_no = employees.emp_no
  JOIN departments
    ON departments.dept_no = dept_emp.dept_no
WHERE titles.to_date > NOW() AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

-- EXERCISE 5
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM employees
  JOIN dept_manager
    ON dept_manager.emp_no = employees.emp_no
  JOIN departments
    ON departments.dept_no = dept_manager.dept_no
  JOIN salaries
    ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date > NOW() AND dept_manager.to_date > NOW()
ORDER BY departments.dept_name ASC;



USE join_test_db;

DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

INSERT INTO users (name, email, role_id) VALUES
  ('jim', 'jim@example.com', 2),
  ('bran', 'bran@example.com', 2),
  ('stan', 'stan@example.com', 2),
  ('loren', 'loren@example.com', null);

SELECT CONCAT(users.name, '''s role in is ', roles.name)
FROM users
JOIN roles
ON roles.id = users.role_id;

SELECT CONCAT(users.name, '''s role in is ', roles.name)
FROM users
LEFT JOIN roles
ON roles.id = users.role_id;

SELECT CONCAT(users.name, '''s role in is ', roles.name)
FROM users
RIGHT JOIN roles
ON roles.id = users.role_id;

SELECT CONCAT('Number of ', roles.name, '''s: ', COUNT(roles.name))
FROM users
JOIN roles
ON roles.id = users.role_id
GROUP BY roles.name;



-- NOTES
--
-- USE employees;
--
-- SELECT * FROM employees LIMIT 2;
-- SELECT * FROM titles LIMIT 2;
--
-- -- GET 2 EMPLOYEES FULL NAMES AND JOB TITLES
--
-- SELECT CONCAT(employees.first_name, ' ', employees.last_name, ' is a ', titles.title)
-- FROM employees
-- JOIN titles
-- ON titles.emp_no = employees.emp_no
-- WHERE titles.to_date > NOW()
-- LIMIT 2;
--
-- -- USING ALIASES
-- SELECT CONCAT(e.first_name, ' ', e.last_name, ' is a ', t.title)
-- FROM employees AS e
-- JOIN titles AS t
-- ON t.emp_no = e.emp_no
-- WHERE t.to_date > NOW()
-- LIMIT 2;
--
-- -- GET AN EMPLOYEES FULL NAME AND DEPARTMENT NAME
--
-- SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name
-- FROM employees
-- JOIN dept_emp
-- ON dept_emp.emp_no = employees.emp_no
-- JOIN departments
-- ON departments.dept_no = dept_emp.dept_no
-- WHERE dept_emp.to_date = '9999-01-01' AND employees.emp_no = 10001;
--
-- -- USING ALIASES
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;