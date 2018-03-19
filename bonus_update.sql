USE bonus_db;
UPDATE products SET price = 0 WHERE id < 3;
UPDATE products SET name = 'ps4', price = 500.00, isSold = false WHERE name = 'ps3';
UPDATE products SET isSold = false;
UPDATE products SET isSold = true WHERE price > 200;