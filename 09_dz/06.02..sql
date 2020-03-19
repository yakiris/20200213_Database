-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW cat AS 
SELECT p.name products, c.name catalogs FROM products p
	JOIN catalogs c WHERE p.catalog_id = c.id;
	
SELECT * FROM cat;