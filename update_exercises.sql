USE codeup_test_db;

SELECT album_name
FROM albums;

SELECT sales AS 'Get sales of all the albums'
FROM albums;

UPDATE albums
SET sales = (sales * 10)
WHERE sales = sales;

SELECT sales AS 'Updated sales times 10'
FROM albums;

SELECT album_name  AS 'Get all albums released before 1980'
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT album_name AS 'Moved albums released before 1980 back to the 1800s'
FROM albums
WHERE release_date < 1980;

SELECT album_name AS 'All albums made by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT album_name AS 'Changed artist Michael Jackson to Peter Jackson'
FROM albums
WHERE artist = 'Peter Jackson';