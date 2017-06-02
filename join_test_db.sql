CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);


# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
  ('anne', 'anne@gmail.com', null),
  ('rox', 'rox@gmail.com', 2),
  ('sam', 'sam@gmail.com', 2),
  ('alb', 'alb@gmail.com', 2);


SELECT *
FROM users;

# Join / Inner Join
SELECT users.name as user_name, roles.name as role_name, count(roles.name) as count_roles
FROM users
  JOIN roles ON users.role_id = roles.id
GROUP BY role_name;


# Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

# Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;
