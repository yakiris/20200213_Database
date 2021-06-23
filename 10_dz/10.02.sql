-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:

-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе /
-- всего пользователей в системе) * 100

SELECT DISTINCT c.name,
count(p.user_id)OVER() / (SELECT count(*) FROM communities) AS average_in_group,
max(p.birthday) OVER w AS youngest,
min(p.birthday) OVER w AS eldest,
count(cu.user_id) OVER w AS users_in_group,
(SELECT COUNT(*) FROM users) all_users,
count(cu.user_id) OVER w / count(p.user_id) OVER() * 100 AS '%%' 
FROM communities c
	JOIN communities_users cu ON c.id = cu.community_id
	JOIN profiles p ON cu.user_id = p.user_id
	WINDOW w AS (PARTITION BY c.id)
ORDER BY eldest;