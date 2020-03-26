 -- 3. Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется 
 -- последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен 
 -- возвращать число 55.

DROP FUNCTION IF EXISTS FIBONACCI;
DELIMITER //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE fs DOUBLE;
  SET fs = SQRT(5);
  RETURN (POW((1 + fs) / 2.0, num) + POW((1 - fs) / 2.0, num)) / fs;
END//
DELIMITER ;

SELECT FIBONACCI(10);


-- Процедура с выводом списка последовательности чисел Фибоначчи
DROP PROCEDURE IF EXISTS FIBONACCI;
DELIMITER //
CREATE PROCEDURE FIBONACCI (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
  -- цикл по созданию временной таблицы
  CREATE TEMPORARY TABLE temp_tab (id int); 
  	WHILE i < num DO 
  		INSERT INTO temp_tab VALUES (i);
  		SET i = i + 1;
	END WHILE;
  	SELECT GROUP_CONCAT(f SEPARATOR ', ') AS total FROM 
		(SELECT @f := @i + @j AS f, @i := @j, @j := @f 
		FROM temp_tab,
			(SELECT @i := 1, @j := 0) sel1) AS t;
  DROP TEMPORARY TABLE temp_tab;		
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//
DELIMITER ;

CALL FIBONACCI(10);

