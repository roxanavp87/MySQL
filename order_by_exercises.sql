SELECT * FROM employees.employees
WHERE (first_name = 'Irena'
       OR  first_name ='Vidya'
       OR first_name ='Maya')
      AND gender =  'M'
ORDER BY first_name;


SELECT * FROM employees.employees
WHERE (first_name = 'Irena'
       OR  first_name ='Vidya'
       OR first_name ='Maya')
      AND gender =  'M'
ORDER BY first_name, last_name;


SELECT * FROM employees.employees
WHERE (first_name = 'Irena'
       OR  first_name ='Vidya'
       OR first_name ='Maya')
      AND gender =  'M'
ORDER BY last_name, first_name;


SELECT * FROM employees.employees
WHERE last_name  LIKE 'E%'
ORDER BY emp_no;

# reversing order

SELECT * FROM employees.employees
WHERE last_name  LIKE 'E%'
ORDER BY emp_no DESC ;

# Change the query for employees hired in the 90s and born on Christmas such
# that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees.employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;
