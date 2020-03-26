#2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT
	p.name,
	p.description,
	c.name
FROM
	products p
LEFT JOIN catalogs c ON
	p.catalog_id = c.id;