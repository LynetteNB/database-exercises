USE codeup_test_db;
DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
number CHAR(10),
email VARCHAR(50) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME,
PRIMARY KEY (id)
);