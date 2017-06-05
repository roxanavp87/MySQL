USE employees;

SELECT *
FROM employees
WHERE emp_no = '101010';

# employees with the same hire date as employee 101010
SELECT *
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = '101010'
);

# titles held by all employess with the first name Aamod
SELECT *
FROM employees
WHERE first_name = 'Aamod';

SELECT


