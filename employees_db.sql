USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


# write a query that shows each department along with the name of the current manager for that department
SELECT dep.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees as e
  JOIN dept_manager AS  dm
ON e.emp_no = dm.emp_no
JOIN departments as dep
ON dm.dept_no = dep.dept_no
WHERE dm.to_date LIKE '9999%'
ORDER BY dep.dept_name;

# Find the name of all departments currently managed by women.
SELECT dep.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
FROM departments as dep
JOIN dept_manager as dm
    ON dep.dept_no = dm.dept_no
JOIN employees as e
    ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999%' AND e.gender LIKE 'F'
ORDER BY dep.dept_name;