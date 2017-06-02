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

