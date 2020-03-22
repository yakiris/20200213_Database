USE receptmira;

-- список рецептов без содержания сахара
SELECT id,name FROM recipes WHERE id NOT IN 
	(SELECT r.id FROM recipes r
		LEFT JOIN ingredients i ON r.id = i.recipes_id
		LEFT JOIN foods f ON i.food_id = f.id
	WHERE
		f.name RLIKE ('^Сахар.*'))
ORDER BY 
	id;

-- рецепты с посленим лайком друзей юзера 2
SELECT u.username, 
	l.user_id, 
	r.name recipe, 
	max(l.created_at) created_at
FROM likes l 
	JOIN friends f 
	JOIN users u	
		ON (u.id = f.friend_id OR u.id = f.user_id)
        AND (l.user_id = f.friend_id OR l.user_id = f.user_id)
    JOIN recipes r ON l.pecipe_id = r.id 
WHERE u.id = 2 AND l.user_id != 2
GROUP BY 
	l.user_id
ORDER BY 
	created_at DESC;

-- 10 самых низкалорийных рецептов из категории Суп
SELECT c.name, 
	r.name,
	round(sum(f.calories * i.quantity)/sum(i.quantity), 1) AS calories,
	round(sum(f.protein * i.quantity)/sum(i.quantity), 1) AS protein,
	round(sum(f.fats * i.quantity)/sum(i.quantity), 1) AS fats,
	round(sum(f.carb * i.quantity)/sum(i.quantity), 1) AS carb
FROM ingredients i 
	JOIN foods f ON i.food_id = f.id
	JOIN recipes r ON i.recipes_id = r.id
	JOIN categories c ON r.category_id = c.id
WHERE 
	c.id = 1
GROUP BY 
	r.name
ORDER BY 
	calories
LIMIT 10;

-- пол пользователей разместивших 10 самых белковых блюд
SELECT DISTINCT r.name, 
	round(sum(f.protein * i.quantity)/sum(i.quantity), 1) protein,
	(CASE (p.gender) WHEN "m" THEN "мужчина" WHEN "w" THEN "женщина" END) gender
FROM recipes r
	JOIN ingredients i ON r.id = i.recipes_id
	JOIN foods f ON i.food_id = f.id
	JOIN profiles p ON r.user_id = p.user_id
GROUP BY
	r.id
ORDER BY
	protein DESC
LIMIT 10;
	
-- пользователи лайкающие рецепты своей страны
SELECT u.username, 
	c.name, 
	count(l.id) likes 
FROM users u
	JOIN profiles p ON u.id = p.user_id
	JOIN likes l ON u.id = l.user_id
	JOIN recipes r ON l.pecipe_id = r.id
	JOIN countries c ON p.country_id = c.id 
WHERE 
	p.country_id = r.country_id
GROUP BY 
	u.username
ORDER BY 
	likes DESC;

-- составление меню с выборкой рецептов с расчетом порций
CREATE TEMPORARY TABLE menu
	SELECT r.id id, 
		r.name recipe,
		round(sum(i.quantity)/c.portion, 1) portion
	FROM 
		recipes r
 		JOIN ingredients i ON r.id = i.recipes_id
 		JOIN categories c ON r.category_id = c.id
	WHERE 
		r.id IN (49, 50, 78, 115)
	GROUP BY 
		r.name;

-- составление листа покупок с суммированием количества продуктов на 4 порции на выбранные рецепты
SELECT  f.name, 
	round(sum(i.quantity / m.portion * 4)) total 
FROM ingredients i
	JOIN menu m ON i.recipes_id = m.id
	JOIN foods f ON i.food_id = f.id
 GROUP BY
	 i.food_id
ORDER BY 
	f.name;

-- удаление временной таблицы
DROP TABLE menu;


