DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS line_items;

CREATE TABLE IF NOT EXISTS users (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE
	);

CREATE TABLE IF NOT EXISTS orders (
	id INTEGER PRIMARY KEY,
	shipping_address TEXT,
	user_id INTEGER
	);

CREATE TABLE IF NOT EXISTS products (
	id INTEGER PRIMARY KEY,
	name TEXT,
	price DECIMAL CHECK (price > 0)
	);

CREATE TABLE IF NOT EXISTS line_items (
	id INTEGER PRIMARY KEY,
	order_id INTEGER,
	product_id INTEGER,
	qty INTEGER
	);

INSERT INTO users
	(name, email)
VALUES
	('Daniel', 'gmail@daniel.com'),
	('Tyler', 'gmail@t$.com'),
	('Daniel', 'gmail@danny.luv');
   
INSERT INTO orders
	(shipping_address, user_id)
VALUES
	('123 N Street Rd', 1),
	('321 S Road St', 1),
	('321 S Road St', 2),
   	('123 S Street Rd', 3);
   
INSERT INTO products
	(name, price)
VALUES
	('AA Batteries', 5),
	('AAA Batteries', 4),
	('C Batteries', 6),
   	('D Batteries', 7),
   	('Z Batteries', 40);

INSERT INTO line_items
(order_id, product_id, qty)
VALUES
	(1, 1, 2),
	(1, 2, 2),
	(1, 3, 2),
   	(2, 1, 1),
   	(2, 2, 1),
   	(2, 3, 1),
   	(3, 3, 3),
   	(3, 4, 2);
    
SELECT * FROM users;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM line_items;







