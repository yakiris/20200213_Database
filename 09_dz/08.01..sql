-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу 
-- "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;

DELIMITER //
CREATE FUNCTION hello(times DATETIME)
RETURNS varchar(255) DETERMINISTIC 
BEGIN
DECLARE result_hello varchar(255);
	IF time(times) BETWEEN '06:00:00' AND '12:00:00' THEN 
  		SET result_hello = 'Доброе утро';
	ELSEIF time(times) BETWEEN '12:00:01' AND '18:00:00' THEN
  		SET result_hello = 'Добрый день';
  	ELSEIF time(times) BETWEEN '18:00:01' AND '00:00:00' THEN
  		SET result_hello = 'Добрый вечер';
  	ELSE 
  		SET result_hello = 'Доброй ночи';
 	END IF;
RETURN result_hello;
END//
DELIMITER ;

SELECT hello(now());
