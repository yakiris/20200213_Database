# 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
#Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

USE les03;

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

-- вариант со вложенными запросами
SELECT 
	id,
	(SELECT name FROM cities WHERE lable = f.frоm) frоm,
    (SELECT name FROM cities WHERE lable = f.tо) tо
FROM flights f;

-- вариант с JOIN
SELECT 
	id,
	c_from.name frоm,
    c_to.name tо
 FROM flights f
	LEFT JOIN cities c_from ON f.frоm = c_from.lable
	LEFT JOIN cities c_to ON f.tо = c_to.lable;
