#2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
#Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT COUNT(*), DAYNAME(DATE_FORMAT(birthday_at, '2020.%m.%d')) AS result FROM users GROUP BY result ORDER BY result DESC;
