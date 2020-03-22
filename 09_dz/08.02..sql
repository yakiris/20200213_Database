-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля 
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TRIGGER IF EXISTS not_null_products_insert;

DELIMITER //
CREATE TRIGGER not_null_products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнены поля name и description';
  END IF; 
END//
DELIMITER ;

INSERT INTO products
	(price, catalog_id)
VALUES
  	(13200.00, 1);
  
DROP TRIGGER IF EXISTS not_null_products_update;

DELIMITER //
CREATE TRIGGER not_null_products_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  DECLARE n_name, n_description VARCHAR(255);
  SELECT name, description INTO n_name, n_description FROM products WHERE id = @num;
  IF NEW.name IS NULL AND NEW.description IS NULL AND (n_name IS NULL OR n_description IS NULL) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнены поля name и description';
  END IF;
  IF NEW.name IS NULL OR NEW.description IS NULL THEN 
  	IF NEW.name IS NULL AND (n_description IS NULL AND NEW.description IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнено поле name';
  	END IF; 
  	IF NEW.description IS NULL AND (n_name IS NULL AND NEW.name IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Не заполнено поле description';
	END IF;
  END IF;
END//
DELIMITER ;
 
SET @num := 14;

UPDATE products SET name = 'text', description = NULL WHERE id = @num;

UPDATE products SET description = 'text' WHERE id = @num;
 
SELECT * FROM products;