-- 4. Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет 
-- устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

CREATE TEMPORARY TABLE date_august (
august DATE NOT NULL);

INSERT INTO date_august VALUES ('2020-08-01'), ('2020-08-05'), ('2020-08-08'), ('2020-08-11'), ('2020-08-14'), ('2020-08-18'), ('2020-08-21'), ('2020-08-25'), ('2020-08-29'), ('2020-08-31');

DELETE FROM date_august ORDER BY august LIMIT 5; 

SELECT * FROM date_august ORDER BY august DESC;