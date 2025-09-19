# CREATE database sql_finals;

# USE sql_finals; 
 
# CREATE TABLE users (
# 	id INT PRIMARY KEY AUTO_INCREMENT,
#	created_at VARCHAR(100),
#	username VARCHAR(100) NOT NULL,
#	phone VARCHAR(100),
#	country VARCHAR(50)
# )

# ALTER TABLE users ADD COLUMN is_marketing_agree INT

# ALTER TABLE users RENAME COLUMN phone TO user_phone;

# ALTER TABLE users DROP COLUMN created_at;

# CREATE TABLE products (
# 	id INT PRIMARY KEY AUTO_INCREMENT,
#	name VARCHAR(255) NOT NULL,
#	price DECIMAL(10, 2) NOT NULL,
#	discount_price DECIMAL(10, 2) NOT NULL
# )

# ALTER TABLE products CHANGE COLUMN name name VARCHAR(500) NOT NULL;

# CREATE TABLE staff (
# 	id INT PRIMARY KEY AUTO_INCREMENT,
# 	user_id INT NOT NULL,
#	last_name VARCHAR(50) NOT NULL,
#	first_name VARCHAR(50) NOT NULL,
#	birth_date DATE
# )

# CREATE TABLE orders (
#	id INT PRIMARY KEY AUTO_INCREMENT,
#	user_id INT,
#	staff_id INT,
#	order_date DATE,
#	FOREIGN KEY (user_id) REFERENCES users(id),
#  FOREIGN KEY (staff_id) REFERENCES staff(id)
# )

# CREATE TABLE orderdetails (
#	id INT PRIMARY KEY AUTO_INCREMENT,
#	order_id INT,
#	product_id INT,
#	quantity INT NOT NULL,
#	FOREIGN KEY (order_id) REFERENCES orders(id),
#  FOREIGN KEY (product_id) REFERENCES products(id)
# )

# ALTER TABLE users DROP COLUMN is_marketing_agree;

# ALTER TABLE orderdetails RENAME COLUMN quantity TO amount;

# DROP TABLE orderdetails;

# DROP DATABASE sql_finals;

#ALTER TABLE users DROP COLUMN is_marketing_agree;
#ALTER TABLE users ADD COLUMN is_marketing_agree BOOLEAN;
#ALTER TABLE users ADD COLUMN city VARCHAR(100);
#ALTER TABLE users ADD COLUMN postalcode VARCHAR(100);
#ALTER TABLE users ADD COLUMN is_auth BOOLEAN;

-- part 2

# INSERT INTO users (username, phone, city, country) VALUES('joejoe@joecompany.com', '010-1234-5678', 'Seoul', 'Korea'),('phk4938@never.com', '010-9876-5432', 'Buenos Aires', 'Argentina')
 
# INSERT INTO users (username, phone, city, country) VALUES('inr01@never.com', '010-1111-2222', 'New York', 'USA'),('fuxp76@never.com', '010-3333-4444', 'Seoul', 'Korea')

# INSERT INTO products (name, price, discount_price) VALUES('Terrarossa Coffee Back',18.00,15.00)

# INSERT INTO products (name, price, discount_price) VALUES('Mini Cheese Ball', 19.00, 19.00), ('Stabucks Drip Coffee', 22.00, 22.00)

# INSERT INTO staff (user_id, last_name, first_name, birth_date) VALUES(2, 'Carter', 'Joe', '1990-10-20'), (10, 'Jang', 'Ken', '1991-02-19')

# INSERT INTO orders (user_id, staff_id, order_date) VALUES(2, 1, '2025-09-18')

# INSERT INTO orderdetails (order_id, product_id, quantity) VALUES(1, 1, 2), (1, 2, 3)

# UPDATE users SET phone = '010-5555-6666' WHERE username = 'inr01@never.com';

# UPDATE products SET price = 20.00 WHERE name = 'Mini Cheese Ball';

# UPDATE staff SET first_name = 'Minjun' WHERE user_id = 10;

# DELETE FROM users WHERE username = 'phk4938@never.com';

# DELETE FROM products WHERE id = 3

# DELETE FROM orderdetails WHERE order_id = 1

# DELETE FROM users;

# DELETE FROM orders WHERE order_date = '2025-09-18';


-- part 3
# SELECT id, username, phone FROM users 

# SELECT COUNT(*) FROM orders WHERE SUBSTR(order_date, 1, 4) = '2015';

# SELECT name FROM products WHERE price = (SELECT MAX(price) FROM products); 

# SELECT id, username FROM users WHERE country = 'Korea';

# SELECT last_name, first_name FROM staff WHERE birth_date <= '1960-01-01';

# SELECT id, order_date FROM orders WHERE user_id = 20

# SELECT COUNT(quantity) FROM orderdetails WHERE product_id = 17

# SELECT ROUND(AVG(price), 2) FROM products

# SELECT country,COUNT(id) AS userCnt FROM users GROUP BY country HAVING userCnt > 4;

# SELECT staff_id, COUNT(DISTINCT id) AS orderCnt FROM orders GROUP BY staff_id ORDER BY orderCnt DESC;

# SELECT u.username, COUNT(DISTINCT o.user_id) AS orderCnt FROM users u INNER JOIN orders o ON u.id = o.user_id GROUP BY u.id HAVING orderCnt > 1;

# SELECT u.username, s.last_name, s.first_name FROM users u INNER JOIN staff s ON u.id = s.user_id WHERE s.user_id = u.id;

# SELECT o.id, SUM(od.quantity) AS orderSum FROM orders o INNER JOIN orderdetails od ON o.id = od.order_id HAVING orderSum > 99;

# SELECT COUNT(o.id) FROM users u INNER JOIN orders o ON u.id = o.user_id WHERE u.country = 'USA'

# SELECT COUNT(id) FROM orders WHERE SUBSTR(order_date,1,7) = '2015-12' AND staff_id = 3

# SELECT NAME, price FROM products WHERE price > (SELECT AVG(price) FROM products);

# SELECT city, COUNT(id) AS userCnt FROM users GROUP BY city HAVING city = 'Seoul'

# SELECT o.id, SUM(p.price * od.quantity) AS priceSum FROM orders o INNER JOIN orderdetails od ON o.id = od.order_id INNER JOIN products p ON od.product_id = p.id GROUP BY o.id HAVING priceSum >= 2000

# SELECT NAME, price FROM products WHERE NAME LIKE '%Coffee%'

# (SELECT last_name, first_name FROM staff WHERE SUBSTR(birth_date,1,4) < 1960)
# UNION
# (SELECT last_name, first_name FROM staff WHERE SUBSTR(birth_date,1,4) > 1990)





















