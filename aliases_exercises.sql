
# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
SELECT concat(last_name, ' ', first_name) AS full_name, birth_date as DOB
FROM employees.employees
LIMIT 10;


