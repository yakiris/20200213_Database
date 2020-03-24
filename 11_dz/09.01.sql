-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и 
-- содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
tables VARCHAR(20),
tables_id int NOT NULL,
tables_name VARCHAR(255),
create_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE = ARCHIVE;

DROP TRIGGER IF EXISTS logs_users_insert;
DELIMITER //
CREATE TRIGGER logs_users_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO logs(tables, tables_id, tables_name) VALUES 
  	('users', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES 
('Василий', '1984-10-20');

DROP TRIGGER IF EXISTS logs_catalogs_insert;
DELIMITER //
CREATE TRIGGER logs_catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
  INSERT INTO logs(tables, tables_id, tables_name) VALUES 
  	('catalogs', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO catalogs (name) VALUES 
('Сетевая плата'); 

DROP TRIGGER IF EXISTS logs_products_insert;
DELIMITER //
CREATE TRIGGER logs_products_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
  INSERT INTO logs(tables, tables_id, tables_name) VALUES 
  	('products', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO products (name, price, catalog_id) VALUES 
('Gigabyte H310M S2H', 5470.00, 1); 

SELECT * FROM logs;
