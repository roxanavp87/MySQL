USE employees;

SELECT DISTINCT title
FROM employees.titles;


SELECT title
FROM employees.titles
GROUP BY title;