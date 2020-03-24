-- 3. (по желанию) Задание на денормализацию
-- Разобраться как построен и работает следующий запрос:
-- Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети.
-- Правильно-ли он построен?
-- Какие изменения, включая денормализацию, можно внести в структуру
-- БД чтобы существенно повысить скорость работы этого запроса?

-- В таблицу users можно добавить счетчики messeges и likes. 
-- И при изменении таблиц messeges и likes триггерами увеличивать счетчик на 1.
-- Тогда при построении запроса не будет возникать необходимости множественного объединения таблиц.

SELECT users.id,
	COUNT(DISTINCT messages.id) +
	COUNT(DISTINCT likes.id) +
	COUNT(DISTINCT media.id) AS activity
FROM users
	LEFT JOIN messages 
		ON users.id = messages.from_user_id
	LEFT JOIN likes
		ON users.id = likes.user_id
	LEFT JOIN media
		ON users.id = media.user_id
GROUP BY users.id
ORDER BY activity
LIMIT 10;

