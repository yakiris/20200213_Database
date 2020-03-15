#3. Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN (три запроса).

# Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
SELECT 
	first_name, 
	last_name,
	(SELECT birthday FROM profiles WHERE user_id = u.id) AS age,
	(SELECT COUNT(*) FROM likes WHERE target_id = u.id) AS likes
FROM 
	users u
ORDER BY
	age DESC
LIMIT 10;

# с использованием join
SELECT CONCAT(u.first_name, ' ', u.last_name) name, 
	p.birthday, 
	count(l.id)
FROM likes l
	JOIN profiles p ON l.target_id = p.user_id
	JOIN users u ON p.user_id = u.id
GROUP BY
	name
ORDER BY
	p.birthday DESC
LIMIT 10;

# Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT
	COUNT(*) AS likes,
	(SELECT
		CASE (gender) WHEN 'm' THEN 'мужчины'
		WHEN 'f' THEN 'женщины' END AS gender
	FROM profiles
	WHERE user_id = l.user_id) AS gender
FROM
	likes l
GROUP BY
	gender
ORDER BY
	likes DESC;

# с использованием join
SELECT (CASE (p.gender) WHEN 'm' THEN 'мужчины'
		WHEN 'f' THEN 'женщины' END) AS gender,
	COUNT(l.user_id) count 
FROM likes l
	JOIN profiles p ON l.user_id = p.user_id
GROUP BY p.gender
ORDER BY count DESC
LIMIT 1;
	
# Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
SELECT 
	CONCAT(first_name, ' ', last_name) name,
	(SELECT country FROM profiles WHERE user_id = u.id) country,
	(SELECT city FROM profiles WHERE user_id = u.id) city,
	# расчитаем количество дней с последней активности в разрезе всех таблиц
	(SELECT IFNULL(MAX(TIMESTAMPDIFF(DAY, confirmed_at, NOW())), 0) res FROM friendship WHERE user_id = u.id OR friend_id = u.id) friend,
	(SELECT IFNULL(MAX(TIMESTAMPDIFF(DAY, created_at, NOW())), 0) res FROM likes WHERE user_id = u.id OR target_id = u.id) likes,
	(SELECT IFNULL(MAX(TIMESTAMPDIFF(DAY, updated_at, NOW())), 0) res FROM media WHERE user_id = u.id) media,
	(SELECT IFNULL(MAX(TIMESTAMPDIFF(DAY, edited_at, NOW())), 0) res FROM messages WHERE from_user_id = u.id OR to_user_id = u.id) mes,
	(SELECT IFNULL(MAX(TIMESTAMPDIFF(DAY, updated_at, NOW())), 0) res FROM posts WHERE user_id = u.id) post,
	(SELECT(friend + likes + media + mes + post)) AS passive
FROM 
	users u
ORDER BY passive DESC
LIMIT 10;

# с использованием join
SELECT 
	CONCAT(first_name, ' ', last_name) name,
	p.country,
	p.city,
 	(IFNULL(MAX(TIMESTAMPDIFF(DAY, f.confirmed_at, NOW())), 0) +
 	IFNULL(MAX(TIMESTAMPDIFF(DAY, l.created_at, NOW())), 0) +
 	IFNULL(MAX(TIMESTAMPDIFF(DAY, mes.edited_at, NOW())), 0) +
 	IFNULL(MAX(TIMESTAMPDIFF(DAY, m.updated_at, NOW())), 0) +
 	IFNULL(MAX(TIMESTAMPDIFF(DAY, pos.updated_at, NOW())), 0)) AS passive
FROM users u
	JOIN profiles p 
		ON u.id = p.user_id
	LEFT JOIN friendship f 
		ON f.friend_id = u.id OR f.user_id = u.id
	LEFT JOIN likes l 
		ON l.user_id = u.id OR l.target_id = u.id
	LEFT JOIN messages mes 
		ON mes.from_user_id = u.id OR mes.to_user_id = u.id
	LEFT JOIN media m
		ON m.user_id = u.id
	LEFT JOIN posts pos 
		ON pos.user_id = u.id
GROUP BY
	u.id
ORDER BY passive DESC 
LIMIT 10;


