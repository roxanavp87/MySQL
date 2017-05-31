USE codeup_test_db;

-- To see table data -> select * from albums;


INSERT INTO albums(arstist, name, release_date, sales, genre) VALUE ('Michael Jackson', 'Thriller', 1982, 46.3, 'Pop, Rock');
INSERT INTO albums(arstist, name, release_date, sales, genre) VALUE ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive rock');

INSERT INTO albums(arstist, name, release_date, sales, genre)
  VALUE ('Michael Jackson', 'Thriller', 1982, 46.3, 'Pop, Rock'),
        ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive rock');