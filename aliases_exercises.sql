USE codeup_test_db;

# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
SELECT concat(last_name, ' ', first_name) AS full_name, birth_date as DOB
FROM employees.employees
LIMIT 10;


# Update the query to format full name to include the employee number so it is formatted as
# 'employee number - lastname, firstname'
SELECT concat(emp_no, ' - ', last_name, ' ', first_name) AS full_name, birth_date as DOB
FROM employees.employees
LIMIT 10;

# Add an index to make sure all album names combined with the artist are unique (Multiple-Column Indexes)
ALTER TABLE albums
    ADD UNIQUE (name, artist);

# Add an index to make sure all the artist are unique (unique index)
# ALTER TABLE albums
#     ADD UNIQUE (artist);

# Trying to add duplicates to test the constraint.
-- Error: [23000][1062] Duplicate entry 'Back in Black-AC/DC' for key 'name'
INSERT INTO albums
(artist, name, release_date, genre, sales)
VALUES
    ('AC/DC', 'Back in Black', 1980, 'Hard rock', 25.9);



