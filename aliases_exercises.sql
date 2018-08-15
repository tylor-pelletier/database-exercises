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


-- ALTER
--
-- DROP TABLE IF EXISTS PETS;
--
-- CREATE TABLE PETS {
--   id = INT UNSIGNED NOT NULL,
--   pet_name = VARCHAR(50),
--   owner_name = VARCHAR(50),
--   age = INT UNSIGNED NOT NULL
-- };
--
-- DESCRIBE PETS;
--
-- -- Allows you to alter the table without messing with other parts of the table
-- ALTER TABLE pets
-- MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT
-- ADD INDEX 'pet_name_key' (pet_name);
--
-- ALTER TABLE pets