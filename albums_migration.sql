USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  arstist VARCHAR(25) NOT NULL,
  name VARCHAR(25) NOT NULL,
  release_date YEAR,
  sales FLOAT UNSIGNED,
  genre TEXT
);

