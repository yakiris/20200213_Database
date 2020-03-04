# создать таблицу лайков
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
from_user_id INT NOT NULL,
to_user_id INT NOT NULL,
table_id VARCHAR(255) not NULL,
content_id iNT NOT NULL,
updated_at DATETIME
)

# в талицы post, message, media добавить колонку likes
ALTER TABLE post ADD COLUMN likes BOOL;
ALTER TABLE messages ADD COLUMN likes BOOL;
ALTER TABLE media ADD COLUMN likes BOOL;

# если в таблицах post, message, media likes = TRUE, то запись сохраняется в таблицу likes
