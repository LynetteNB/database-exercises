USE bonus_db;
DELETE FROM products WHERE isSold = true;
DELETE FROM products WHERE price < 50;
DELETE FROM products;