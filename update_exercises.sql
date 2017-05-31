USE codeup_test_db;

SELECT 'ALL albums in your table before to change sales.' AS '';
SELECT *
FROM albums;

SELECT 'Making all the albums 10 times more popular (sales * 10)' as '';
UPDATE albums
SET sales = sales * 10;

SELECT 'ALL albums in your table after to change sales.' AS '';
SELECT *
FROM albums;



SELECT 'All albums released before 1980' AS '';
SELECT *
FROM albums
WHERE release_date < 1980;

SELECT 'Move all the albums before 1980 back to the 1800s' AS '';




SELECT 'All albums by Michael Jackson' AS '';
SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'Change Michael Jackson to Peter Jackson' AS '';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums by Peter Jackson' AS '';
SELECT *
FROM albums
WHERE artist = 'Peter Jackson';



