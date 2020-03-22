-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы 
-- приложения и добавить необходимые индексы.

CREATE INDEX friendship_friend_id_idx
  ON friendship(friend_id);
 
CREATE INDEX likes_target_id_idx
  ON likes (target_id);

CREATE INDEX media_filename_idx
  ON media (filename);

CREATE INDEX posts_head_idx
  ON posts (head);

CREATE INDEX profiles_birthday_idx
  ON profiles (birthday);
 
CREATE INDEX profiles_photo_id_idx
  ON profiles (photo_id);

CREATE INDEX users_email_idx
  ON users (email);
 
CREATE INDEX users_first_name_last_name_idx
  ON users (first_name, last_name);


