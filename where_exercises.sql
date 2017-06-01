SELECT 'Employees with first names ''Irena'', ''Vidya'', or ''Maya'' and is a male — 441 rows.' AS '';
SELECT * FROM employees
WHERE (first_name = 'Irena'
       OR  first_name ='Vidya'
       OR first_name ='Maya')
      AND gender =  'M';


SELECT 'Employees whose last name starts or ends with ''E'' — 30,723 rows.' AS '';
SELECT * FROM employees
WHERE last_name  LIKE 'E%'
      OR last_name LIKE '%e';


SELECT 'Employees whose last name starts and ends with ''E'' — 899 rows.' AS '';
SELECT * FROM employees
WHERE last_name  LIKE 'E%'
      AND last_name LIKE '%e';


SELECT 'employees hired in the 90s and born on Christmas — 362 rows' AS '';
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25';


SELECT 'employees with a ''q'' in their last name but not ''qu'' — 547 rows' AS '';
SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';