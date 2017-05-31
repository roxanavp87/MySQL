USE codeup_test_db;

SELECT 'ALL albums in your table.' AS '';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS '';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';