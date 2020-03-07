#2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT 
	first_name, 
	last_name,
	(SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE user_id = u.id) AS age,
	(SELECT COUNT(*) FROM likes WHERE user_id = u.id) AS likes
FROM 
	users u
ORDER BY
	age
LIMIT 10;
