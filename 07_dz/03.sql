# 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
#Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

CREATE TABLE cities (
lable VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL
);

INSERT INTO cities (lable, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omck', 'Омск');

CREATE TABLE flights (
id SERIAL PRIMARY KEY,
frоm VARCHAR(255) NOT NULL,
tо VARCHAR(255) NOT NULL
);

INSERT INTO flights (frоm, tо) VALUES
('moscow', 'omck'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omck', 'irkutsk'),
('moscow', 'kazan');

SELECT 
	id,
	(SELECT name FROM cities WHERE lable = f.frоm) frоm,
    (SELECT name FROM cities WHERE lable = f.tо) tо
 FROM flights f;
