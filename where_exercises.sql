
SELECT 'Employees with first names ''Irena'', ''Vidya'', or ''Maya'' — 709 rows (Hint: Use IN).' AS '';
SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'Employees whose last name starts with ''E'' — 7,330 rows.' AS '';
SELECT * FROM employees.employees WHERE last_name  LIKE 'E%';