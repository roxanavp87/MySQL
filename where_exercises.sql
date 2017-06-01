
SELECT 'Employees with first names ''Irena'', ''Vidya'', or ''Maya'' — 709 rows (Hint: Use IN).' AS '';
SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');


SELECT 'Employees whose last name starts with ''E'' — 7,330 rows.' AS '';
SELECT * FROM employees.employees WHERE last_name  LIKE 'E%';


SELECT 'Employees hired in the 90s — 135,214 rows' AS '';
SELECT *
FROM employees.employees WHERE hire_date > '1990%';

SELECT 'Employees born on Christmas — 842 rows' AS '';
SELECT *
FROM employees.employees WHERE hire_date LIKE '%-12-25';

SELECT 'Employees with a q in their last name — 1,873 rows' AS '';
SELECT *
FROM employees.employees WHERE last_name LIKE '%q%';