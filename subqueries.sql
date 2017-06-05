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

SELECT title, emp_no
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
)
group by emp_no;

SELECT concat(e.first_name, ' ', e.last_name), t.title
FROM employees as e
JOIN titles as t ON e.emp_no = t.emp_no
WHERE first_name = 'Aamod'
GROUP BY e.emp_no;


