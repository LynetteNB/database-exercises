USE bonus_db;
CREATE TABLE products (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(5, 2) NOT NULL,
  isSold BOOLEAN NOT NULL,
  PRIMARY KEY(id)
);