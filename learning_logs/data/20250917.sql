# SELECT u.id, u.username, u.city, u.country, s.first_name, s.last_name
# FROM users u INNER JOIN staff s 
# ON u.id = s.user_id
# ORDER BY u.id;

# SELECT s.id, s.first_name, o.id, o.order_date
# FROM staff s INNER JOIN orders o
# ON s.id = o.staff_id
# WHERE s.id IN (3,5)
# ORDER BY s.id;

# SELECT country, COUNT(o.user_id) AS orderCtn
# FROM users u LEFT JOIN orders o
# ON u.id = o.user_id
# GROUP BY country
# ORDER BY orderCtn DESC;

# SELECT o.user_id, SUM(p.price) AS priceSum, SUM(p.discount_price) AS disSum
# FROM orders o LEFT JOIN orderdetails od ON o.id = od.order_id
# RIGHT JOIN products p ON p.id = od.product_id
# GROUP BY o.user_id
# ORDER BY priceSum DESC ;

# (SELECT * FROM users)
# UNION ALL
# (SELECT * FROM users);

# (SELECT id, phone, country, city FROM users WHERE country = 'Korea') UNION ALL (SELECT id, phone, country, city FROM users WHERE country = 'Mexico') ORDER BY country;

# (SELECT * FROM orders WHERE SUBSTR(order_date, 1, 7) = '2015-10') UNION ALL (SELECT * FROM orders WHERE SUBSTR(order_date, 1, 7) = '2015-12') ORDER BY order_date DESC;

# (SELECT id, phone, country, city, is_marketing_agree FROM users WHERE country = 'USA' AND is_marketing_agree = 1) UNION ALL (SELECT id, phone, country, city, is_marketing_agree FROM users WHERE country = 'France' AND is_marketing_agree = 0) ORDER BY country;

# ((SELECT * FROM orderdetails) UNION (SELECT * FROM products) UNION ALL (SELECT * FROM products) UNION (SELECT * FROM orderdetails));

# (SELECT * FROM products) UNION (SELECT * FROM orderdetails)
# UNION
# (SELECT * FROM orderdetails) UNION (SELECT * FROM products);

# (SELECT * FROM products p LEFT JOIN orderdetails od ON p.id = od.product_id)
# UNION
# (SELECT * FROM products p RIGHT JOIN orderdetails od ON p.id = od.product_id);

# SELECT name, price, (SELECT ROUND(AVG(price), 2) FROM products) AS avgProduct FROM products;

# SELECT name, price, AVG(price) AS Avgprice FROM products ORDER BY name DESC;

# SELECT name, price, (SELECT ROUND(AVG(price), 2) FROM products) AS avgProduct ,(SELECT ROUND(AVG(discount_price), 2) FROM products) AS avgDiscountPrice FROM products;

# SELECT city, COUNT(id) AS userCnt FROM users GROUP BY city HAVING userCnt > 2 ORDER BY userCnt DESC;

# SELECT * 
# 	FROM
#	  (
#	    SELECT city, COUNT(id) AS userCnt FROM users GROUP BY city
#	  ) temp 
#  WHERE userCnt > 2 
#  ORDER BY userCnt DESC;

# SELECT s.id, s.last_name, s.first_name, s.birth_date, o.id, o.order_date FROM orders o LEFT JOIN staff s ON o.staff_id = s.id WHERE s.last_name IN ('kyle','Scott') ORDER BY s.last_name;

# SELECT * FROM products WHERE discount_price = (SELECT MAX(discount_price) FROM products);

# SELECT * FROM (SELECT * FROM orders WHERE order_date >= '2015-07-01' AND order_date < '2015-08-01') o INNER JOIN (SELECT * FROM orderdetails WHERE quantity > 49) od ON o.id = od.order_id;

# SELECT * FROM users u INNER JOIN orders o ON u.id = o.user_id WHERE SUBSTR(o.order_date, 1, 4) = '2016';

# SELECT * FROM users WHERE id IN (SELECT user_id FROM orders WHERE SUBSTR(order_date, 1, 4) = '2016');

# SELECT * FROM products WHERE price = (SELECT MIN(price) FROM products);

# SELECT * FROM (SELECT country, COUNT(DISTINCT id) AS userCnt FROM users GROUP BY country) temp WHERE userCnt > 4 ORDER BY userCnt DESC;

# SELECT * , ROUND(discount_price / (SELECT MAX(discount_price) FROM products), 3) AS rationPerMaxPrc FROM products;














