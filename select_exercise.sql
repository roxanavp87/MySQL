USE codeup_test_db;

-- queries

SELECT 'name of all albums by Pink Floyd' AS '';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'year Falling into You was released' AS '';
SELECT release_date FROM albums WHERE name = 'Falling into You';

SELECT 'genre for Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'All the albums in the rock genre' AS '';
SELECT name, genre FROM albums WHERE genre LIKE '%Rock%';

# SELECT *
# FROM albums
# WHERE INSTR(genre, 'Rock') > 0;

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT name
FROM albums WHERE sales<20;