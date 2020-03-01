# ������� ������� ������
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
from_user_id INT NOT NULL,
to_user_id INT NOT NULL,
table_id VARCHAR(255) not NULL,
content_id iNT NOT NULL,
updated_at DATETIME
)

# � ������ post, message, media �������� ������� likes
ALTER TABLE post ADD COLUMN likes BOOL;
ALTER TABLE messages ADD COLUMN likes BOOL;
ALTER TABLE media ADD COLUMN likes BOOL;

# ���� � �������� post, message, media likes = TRUE, �� ������ ����������� � ������� likes
