USE codeup_test_db;

SELECT 'deleting albums released after 1991' AS '';
DELETE
FROM albums
WHERE release_date > 1991;


SELECT 'deleting albums with the genre disco' AS '';
DELETE
FROM albums
WHERE genre = '%disco%';


SELECT 'deleting albums by Whitney Houston' AS '';
DELETE
FROM albums
WHERE artist = 'Whitney Houston';