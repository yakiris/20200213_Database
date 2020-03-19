-- 2. Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, 
-- имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ 
-- к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, 
-- мог бы извлекать записи из представления username.

CREATE TABLE accounts (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
password VARCHAR(255));

INSERT INTO accounts (name, password) VALUES 
('ivan', '123456'),
('petr', '85d845d*55'),
('olga', 'qwerty'),
('nik', 'poiuytr');

CREATE VIEW username AS 
	SELECT id, name FROM accounts;

SELECT * FROM username;

CREATE USER 'user_read'@'localhost' IDENTIFIED WITH sha256_password BY 'pass';
GRANT SELECT ON shop.username TO 'user_read'@'localhost';

