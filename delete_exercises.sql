USE codeup_test_db;

SELECT 'Albums released after 1991' AS '';
SELECT name, release_date
FROM albums
WHERE release_date > 1991;


SELECT 'Albums with the genre disco' AS '';
SELECT name, genre
FROM albums
WHERE genre = '%disco%';


SELECT 'Albums by Whitney Houston (...or maybe an artist of your choice)' AS '';
SELECT artist, name
FROM albums
WHERE artist = 'Whitney Houston';