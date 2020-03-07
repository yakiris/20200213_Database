#3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	COUNT(*) AS likes,
	(
	SELECT
		CASE (gender) WHEN 'm' THEN 'мужчины'
		WHEN 'f' THEN 'женщины' END AS gender
	FROM
		profiles
	WHERE
		user_id = l.target_id) AS gender
FROM
	likes l
GROUP BY
	gender;
