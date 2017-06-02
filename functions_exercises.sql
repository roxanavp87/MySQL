# find the number of employees for each gender with those names
SELECT COUNT(*), gender
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

# combine first and last name together for employees whose names start and end with 'E' as a single column
SELECT concat(first_name, ' ', last_name)
FROM employees.employees
WHERE last_name  LIKE 'E%E';



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