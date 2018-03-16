USE codeup_test_db;
DROP TABLE IF EXISTS pizza_order;
CREATE TABLE pizza_order(
name VARCHAR(50) NOT NULL,
phone_number  CHAR(10) NOT NULL,
email VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
pizza_size CHAR(2) NOT NULL,
total_cost DECIMAL(5, 2) NOT NULL,
description VARCHAR(200),
isDelivered BOOLEAN NOT NULL,
created_at DATETIME,
updated_at DATETIME,
PRIMARY KEY(name)
);