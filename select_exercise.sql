USE codeup_test_db;

-- queries

-- select name of all albums by Pink Floyd.
SELECT 'name of all albums by Pink Floyd' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- select year Falling into You was released
SELECT 'year Falling into You was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Falling into You';

SELECT 'genre for Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'All the albums in the rock genre' AS 'Info';
SELECT name, genre FROM albums WHERE genre = 'Rock';

SELECT *
FROM albums
WHERE INSTR(genre, 'Rock') > 0;

SELECT 'Which albums had less than 20 million certified sales' AS 'Info';
SELECT name
FROM albums WHERE sales<20;