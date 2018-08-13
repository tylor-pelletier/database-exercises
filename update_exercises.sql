USE codeup_test_db;

SELECT *
FROM albums;

SELECT *
FROM albums
WHERE sales = sales;

SELECT 'Updated sales times 10' AS 'Exercise 1';
UPDATE albums
SET sales = (sales * 10)
WHERE sales = sales;

SELECT *
FROM albums
WHERE sales = sales;

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT 'Moved albums released before 1980 back to the 1800s' AS 'Exercise 2';
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'Changed artist Michael Jackson to Peter Jackson' AS 'Exercise 3';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT *
FROM albums
WHERE artist = 'Peter Jackson';

SELECT *
FROM albums;