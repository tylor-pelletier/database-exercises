USE codeup_test_db;

SELECT album_name AS 'Exercise 1: The name of all albums by Pink Floyd:'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Exercise 2: The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Exercise 3: The genre for Nevermind'
FROM albums
WHERE album_name = 'Nevermind';

SELECT album_name AS 'Exercise 4: Albums that were released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT album_name AS 'Exercise 5: Albums that had less than 20 million certified sales'
FROM albums
WHERE sales < 20.0;

SELECT album_name AS 'Exercise 6: Albums with a genre of "Rock"'
FROM albums
WHERE genre = 'Rock';
-- WHERE genre LIKE '%rock%'; -- Allows you to search for genres with the string rock anywhere in it