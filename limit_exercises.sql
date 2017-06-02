USE employees;

# List the first 10 distinct last name sorted in descending order
SELECT last_name
FROM employees.employees
GROUP BY last_name DESC
LIMIT 10;

# find just the first 5 employees born on Christmas and hired in the 90s
SELECT first_name, last_name
FROM employees.employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
LIMIT 5;

SELECT first_name, last_name
FROM employees.employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25'
LIMIT 5 OFFSET 5;






-- SELECT @@GLOBAL.sql_mode;
-- STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
