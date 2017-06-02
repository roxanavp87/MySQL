# find the number of employees for each gender with those names
SELECT count(*), gender
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


# combine first and last name together for employees whose names start and end with 'E' as a single column
SELECT concat(first_name, ' ', last_name)
FROM employees.employees
WHERE last_name  LIKE 'E%E';


# find how many days employees hired in the 90s and born on Christmas have been working at the company
SELECT concat(first_name, ' ', last_name), datediff(curdate(), hire_date)
FROM employees.employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25';


# employees with a 'q' in their last name but not 'qu' without repetitions
SELECT count(DISTINCT first_name), last_name
FROM employees.employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


