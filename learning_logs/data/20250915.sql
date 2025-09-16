# SELECT * FROM users;
# SELECT * FROM products;
# SELECT * FROM orderdetails;
# SELECT * FROM orders;
# SELECT * FROM staff;
# SELECT username FROM users;
# SELECT 'Hello SLQ!';
# SELECT
#	'Find' AS 'First',
#	'Insight' AS 'Second',
#	'With SQL' AS 'Third';
# SELECT 28 + 891;
# SELECT 19*27 AS Result;
# SELECT
#	37+172 AS Plus,
#	25*78 AS Times,
#	'I love SQL!' AS Result;
# SELECT id, name FROM products LIMIT 30;
# SELECT * FROM orderdetails;
# SELECT * FROM users LIMIT 7;
# SELECT id, user_id, order_date FROM orders;
# SELECT * FROM users;
# SELECT * FROM users WHERE country = 'korea' AND is_marketing_agree = 1;
# SELECT * FROM users WHERE country != 'Korea';
# SELECT * FROM users WHERE country = 'Korea' AND id = 10;
# SELECT * FROM users WHERE created_at >= '2010-12-01' AND created_at <='2011-03-01';
# SELECT * FROM users WHERE country NOT IN ('Korea','UK','USA');
# SELECT * FROM users WHERE country NOT LIKE '%S';
# SELECT created_at,phone, city, country FROM users WHERE country = 'Mexico';
# SELECT * FROM users WHERE country NOT IN ('Korea','Canada','Belgium');
# SELECT id, name, price FROM products WHERE name LIKE 'N%';
# SELECT * FROM orders WHERE order_date != '2025-10-31';
# SELECT *,(price - discount_price) AS discount_amount FROM products WHERE id <= 20 AND price >= 30;
# SELECT * FROM users ORDER BY created_at DESC;
# SELECT username, phone, city, country, id FROM users ORDER BY 1 ;
# SELECT * FROM products ORDER BY price DESC;
# SELECT * FROM orders ORDER BY order_date DESC;
SELECT * FROM orderdetails ORDER BY product_id DESC , quantity ASC;


