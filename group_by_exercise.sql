USE employees;

SELECT DISTINCT title
FROM employees.titles;


SELECT title
FROM employees.titles
GROUP BY title;

SELECT last_name
FROM employees.employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT last_name
FROM employees.employees
WHERE  last_name LIKE '%q%'
      AND  last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 50;