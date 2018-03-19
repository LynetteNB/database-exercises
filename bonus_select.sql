USE bonus_db;
SELECT * FROM products WHERE isSold = true;
SELECT * FROM products WHERE price > 100;
SELECT name, isSold FROM products WHERE name = 'ps3';
SELECT name, price FROM products WHERE name = 'dog';
SELECT isSold, price FROM products WHERE price > 199;