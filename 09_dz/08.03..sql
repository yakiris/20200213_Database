 -- 3. Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется 
 -- последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен 
 -- возвращать число 55.

DROP FUNCTION IF EXISTS FIBONACCI;

DELIMITER //
CREATE FUNCTION FIBONACCI (num INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  	DECLARE i INT DEFAULT 0;
  	DECLARE total VARCHAR(255);
  	IF (num > 0) THEN
  		CREATE TEMPORARY TABLE temp_tab (id int); 
  		WHILE i < num DO 
  			INSERT INTO temp_tab VALUES (i);
  			SET i = i + 1;
		END WHILE;
  		SELECT GROUP_CONCAT(f SEPARATOR ', ') AS total 
  		FROM (SELECT @f := @i + @j AS f, @i := @j, @j := @f 
		  	FROM temp_tab,(SELECT @i := 1, @j := 0) sel1) AS t;
  	 	DROP TEMPORARY TABLE temp_tab;		
  	ELSE
		SELECT 'Ошибочное значение параметра';
  	END IF;
  	RETURN total;
-- и на этом этапе возникает ошибка, в процедуре всё работает корректно. 
END//
DELIMITER ;

SELECT FIBONACCI(10);
