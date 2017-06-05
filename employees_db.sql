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

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title', count(t.title) AS 'Count'
FROM titles AS t
JOIN dept_emp as de
    ON de.emp_no = t.emp_no
WHERE de.dept_no LIKE 'd009' AND de.to_date LIKE '9999%' AND t.to_date LIKE '9999%'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Name', s.salary
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments as d ON dm.dept_no = d.dept_no
WHERE dm.to_date like '9999%' AND s.to_date like '9999%'
GROUP BY d.dept_name;

# Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(e.first_name, ' ', e.last_name) as 'Employee Name' , d.dept_name as 'Department Name'-- , dm.emp_no
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager as dm ON e.emp_no = dm.emp_no
WHERE de.to_date LIKE '9999%' -- AND dm.to_date LIKE '9999%'
ORDER BY 'Employee Name ';

# Find the names of all current employees and their department name
SELECT concat(e.first_name, ' ', e.last_name) as 'Employee Name',  d.dept_name as 'Department Name'
FROM employees AS e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%'
ORDER BY d.dept_name;


SELECT concat(e.first_name, ' ', e.last_name) as 'Employee Name',  d.dept_name as 'Department Name', concat(em.first_name, ' ' ,em.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_emp as de ON e.emp_no = de.emp_no
  JOIN departments as d ON de.dept_no = d.dept_no
  JOIN dept_manager as dm ON d.dept_no = dm.dept_no
  JOIN employees as em ON dm.emp_no = em.emp_no
WHERE de.to_date LIKE '9999%' AND dm.to_date > now()
ORDER BY d.dept_name;








