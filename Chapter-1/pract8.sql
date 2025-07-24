SHOW DATABASES;
CREATE DATABASE practice7;
SHOW TABLES FROM practice7;
USE practice7;
DROP TABLE products;
SELECT * FROM products;
CREATE TABLE products(
product_id TINYINT PRIMARY KEY,
product_no SMALLINT,
product_price INT,
product_info BIGINT,
product_info1 DOUBLE(10,2),
product_name CHAR(10),
product_address VARCHAR(50),
product_manufacturing_details  TEXT,
product_category ENUM("TECH","NON-TECH","OTHERS"),is_available BOOL,
created_at DATE,
created_time TIME,
created_info DATETIME,
updated_at TIMESTAMP
);
ALTER TABLE products
DROP product_category;
UPDATE products
SET product_manufacturing_details="afhehfepibef"
WHERE product_id=1;

CREATE TABLE products1(
product_id TINYINT,
product_no SMALLINT,
product_price INT,
product_info BIGINT,
product_info1 DOUBLE(10,2),
product_name CHAR(10),
product_address VARCHAR(50),
product_manufacturing_details  TEXT,
product_category ENUM("TECH","NON-TECH","OTHERS"),is_available BOOL,
created_at DATE,
created_time TIME,
created_info DATETIME,
updated_at TIMESTAMP,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
DROP TABLE products1;
SELECT * FROM products1;
ALTER TABLE products1
ADD CONSTRAINT PRIMARY KEY (product_id);

INSERT INTO products1
VALUES
(4,34,4456,7784321,4567.99,"microsoft","gurugram","manufactured in noida and labeled as gurugram","NON-TECH",TRUE,"2024-07-12","16:10:34","2024-05-23,19:28:45",NOW());

ALTER TABLE products
ADD
(is_available BOOL,
created_at DATE,
created_time TIME,
created_info DATETIME,
updated_at TIMESTAMP);

UPDATE products
SET
is_available=FALSE,
created_at ="2024-07-12",
created_time="16:10:34",
created_info="2024-05-23,19:28:45",
updated_at =NOW()
WHERE product_name="apple";

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM products;
INSERT INTO products
values
(3,34,4456,7784321,4532.89,"microsoft","gurugram","manufactured in noida and labeled as gurugram","NON-TECH",TRUE,"2024-07-12","16:10:34","2024-05-23,19:28:45",NOW());