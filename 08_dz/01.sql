# 1. Добавить необходимые внешние ключи для всех таблиц базы данных vk (приложить команды).

DESC profiles;

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media (id);
	
ALTER TABLE profiles MODIFY COLUMN photo_id INT UNSIGNED;
	
DESC media;

ALTER TABLE media
	ADD CONSTRAINT media_iser_is_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT media_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types (id); 
	
DESC messages;

ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users (id),
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users (id);
	
DESC friendship;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users (id),
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses (id);
	
DESC communities;

ALTER TABLE communities
	ADD CONSTRAINT communities_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media (id);

DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities (id),
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id);
	
DESC posts;

ALTER TABLE posts
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media (id),
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id);
	
DESC likes;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types (id),
	ADD CONSTRAINT likes_target_id_fk
		FOREIGN KEY (target_id) REFERENCES users (id);
	


