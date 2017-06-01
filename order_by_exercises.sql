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