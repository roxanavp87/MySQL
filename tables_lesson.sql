-- Tables lesson
-- 1: run mysql file -> mysql -u codeup -p < tables_lesson.sql
-- 2: connect to the MySQL client normally -> mysql -u codeup -p
-- SHOW CREATE TABLE quotes; or SHOW CREATE TABLE quotes\G
-- DESCRIBE quotes;

-- to select database()
USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS users_test;

CREATE TABLE quotes (
  author_first_name VARCHAR(50),
  author_last_name  VARCHAR(100) NOT NULL,
  content TEXT NOT NULL
);

CREATE TABLE people (
  name VARCHAR(20) NOT NULL,
  age INT UNSIGNED NOT NULL
);


CREATE TABLE users (
  is_admin TINYINT NOT NULL,
  password VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL
);