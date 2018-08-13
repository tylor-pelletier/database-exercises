USE codeup_test_db;

SELECT *
FROM albums
WHEN release_date > 1991;

SELECT 'Delete all albums that were released after 1991' AS 'Exercise 1';
DELETE FROM albums
WHERE release_date > 1991;

SELECT *
FROM albums
WHEN genre = 'Disco';

SELECT 'Delete all albums with a genre of "Disco"' AS 'Exercise 2';
DELETE FROM albums
WHERE genre = 'Disco';

SELECT *
FROM albums
WHEN artist = 'Whitney Houston';

SELECT 'Delete all albums that have "Whitney Houston" as the artist' AS 'Exercise 3';
DELETE FROM albums
WHERE artist = 'Whitney Houston';