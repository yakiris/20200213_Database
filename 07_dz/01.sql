# 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

# вариант с вложенным запросом
SELECT
	*
FROM
	users
WHERE
	id = (
	SELECT
		user_id
	FROM
		orders);

# вариант с использованием JOIN
SELECT
	u.name,
	o.id order_id
FROM
	users u
RIGHT JOIN orders o ON
	u.id = o.user_id;