USE codeup_test_db;
SELECT 'Albums released after 1991' AS 'info';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Albums with the genre ''disco''' AS 'info';
DELETE FROM albums WHERE genre = 'disco';
SELECT 'Albums by The Beatles' AS 'info';
DELETE FROM albums WHERE artist = 'The Beatles';