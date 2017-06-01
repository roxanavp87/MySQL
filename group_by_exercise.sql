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