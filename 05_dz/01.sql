#1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
#Заполните их текущими датой и временем.

SELECT * FROM users;

UPDATE users SET
	created_at = CURRENT_TIMESTAMP,
	updated_at = CURRENT_TIMESTAMP;