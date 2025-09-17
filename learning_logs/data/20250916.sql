# SELECT COUNT(*) AS userNum FROM users;
# SELECT COUNT(country) FROM users;
# SELECT COUNT(DISTINCT country) FROM users;
# SELECT MIN(price) FROM products;
# SELECT MAX(price) FROM products;
# SELECT SUM(price) FROM products;
# SELECT AVG(discount_price) FROM products;
# SELECT ROUND(AVG(discount_price), 2) AS avgPrice FROM products;
# SELECT SUBSTR(created_at, 1, 10) AS day, SUBSTR(created_at, 1, 7) AS month, created_at FROM users;
# SELECT LENGTH(username), username FROM users;
# SELECT SUM(price) FROM products;
# SELECT ROUND(AVG(id), 2) FROM products WHERE id <= 30;
# SELECT COUNT(DISTINCT id) AS userCount FROM users WHERE LENGTH(username) < 18;
# SELECT COUNT(DISTINCT id) FROM users WHERE SUBSTR(created_at, 1, 7) BETWEEN '2010-10' AND '2010-12';
# SELECT country, COUNT(DISTINCT id) AS uniqueUsersCnt FROM users GROUP BY country;
# SELECT COUNT(country) FROM users WHERE country = 'Korea' AND is_marketing_agree = 1;
# SELECT country, is_marketing_agree, COUNT(DISTINCT id) AS uniqueUserCnt FROM users GROUP BY country, is_marketing_agree ORDER BY country ASC, is_marketing_agree DESC;
# SELECT country, city, COUNT(DISTINCT id) AS userCnt FROM users GROUP BY country, city ORDER BY country, userCnt DESC;
# SELECT SUBSTR(created_at, 1, 7) AS month, COUNT(DISTINCT id) AS userCnt FROM users GROUP BY SUBSTR(created_at, 1, 7) ORDER BY month DESC;
# SELECT staff_id, user_id, COUNT(*) AS orderCnt FROM orders GROUP BY staff_id, user_id ORDER BY staff_id, orderCnt DESC;
# SELECT SUBSTR(order_date, 1, 7) AS month FROM orders GROUP BY month ORDER BY month DESC;
# SELECT country, COUNT(country) AS cnt FROM users WHERE country IN ('Korea','USA','France') GROUP BY country;
# SELECT country, COUNT(country) AS cnt FROM users GROUP BY country HAVING COUNT(country) > 7 ORDER BY 2 DESC;
# SELECT staff_id, COUNT(id) AS orderCnt, COUNT(DISTINCT user_id) AS userCnt FROM orders GROUP BY staff_id HAVING orderCnt > 9 AND userCnt < 41 ORDER BY orderCnt DESC;
# SELECT user_id, COUNT(id) AS orderCnt FROM orders GROUP BY user_id HAVING orderCnt > 6 ORDER BY orderCnt DESC ;
# SELECT country, COUNT(DISTINCT city) AS cityCnt, COUNT(id) AS idCnt FROM users GROUP BY country HAVING cityCnt > 4 AND idCnt > 2 ORDER BY cityCnt DESC, idCnt DESC;
# SELECT country, COUNT(id) AS idCnt  FROM users WHERE country IN ('USA','Brazil','Korea','Argentina','Mexico') GROUP BY country HAVING idCnt > 4 ORDER BY idCnt DESC;
# SELECT * FROM users u INNER JOIN orders o ON u.id = o.user_id;
# SELECT * FROM users u LEFT OUTER JOIN orders o ON u.id = o.user_id;
SELECT u.id, u.username, u.phone, o.id ,od.product_id 
FROM users u LEFT JOIN orders o ON u.id = o.user_id
INNER JOIN orderdetails od ON o.id = od.order_id
ORDER BY u.id;












