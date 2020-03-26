SELECT * FROM users LIMIT 10;

SELECT created_at, updated_at FROM users WHERE updated_at < created_at;
UPDATE users SET created_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

SELECT * FROM profiles LIMIT 10;

CREATE TEMPORARY TABLE gend (gend char(1));
INSERT INTO gend VALUES ('m'), ('w');

UPDATE profiles SET gender = (SELECT gend FROM gend ORDER BY RAND() LIMIT 1); 

UPDATE profiles SET updated_at = CURRENT_TIMESTAMP WHERE updated_at < created_at; 

SELECT * FROM messages LIMIT 10;
UPDATE messages SET 
	from_user_id = FLOOR( 1 + RAND() * 100), 
	to_user_id = FLOOR( 1 + RAND() * 100)
;

DESC media;

SELECT * FROM media_types;

DELETE FROM media_types;

INSERT INTO media_types (name) VALUES
	('photo'),
	('video'),
	('audio')
;

TRUNCATE media_types; 

SELECT * FROM media limit 10;

UPDATE media SET
	media_type_id = FLOOR(1 + RAND() * 3),
	user_id  = FLOOR(1 + RAND() * 100)
;

UPDATE media SET
	filename = CONCAT('http://dropbox.com/vk/file_', filename); 

UPDATE media SET
	filename = CONCAT(filename, '.MP3')
WHERE 
	media_type_id = 3
;

UPDATE media SET
	filename = CONCAT(filename, '.JPG')
WHERE 
	media_type_id = 1
;

UPDATE media SET
	filename = CONCAT(filename, '.AVI')
WHERE 
	media_type_id = 2
;
	
UPDATE media SET
	updated_at = CURRENT_TIMESTAMP 
WHERE 
	updated_at  < created_at
;

#{"owner": "first last"}

UPDATE media SET metadata = CONCAT('{"owner": "',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}');
	
desc media;

ALTER TABLE media MODIFY COLUMN metadata JSON;

DESC profiles;

ALTER TABLE profiles MODIFY COLUMN photo_id INT;

UPDATE profiles SET photo_id = (
	SELECT id FROM media 
		WHERE 
		media.user_id = profiles.user_id AND
		media.media_type_id = 1 LIMIT 1
	);

select * from friendship limit 10;

UPDATE friendship SET
	user_id = FLOOR(1 + RAND() * 100),
	friend_id = FLOOR(1 + RAND() * 100)
;

SELECT * FROM friendship_statuses;

TRUNCATE friendship_statuses; 

INSERT INTO friendship_statuses (name)
	VALUES ('Requested'), ('Confirmed'), ('Rejected');
	
UPDATE friendship SET
	status_id = FLOOR(1 + RAND() * 3); 
	
UPDATE friendship SET
	confirmed_at = CURRENT_TIMESTAMP WHERE confirmed_at < requested_at; 
	
SELECT * FROM communities;

DELETE FROM communities WHERE id > 20;

SELECT * FROM communities_users;

UPDATE communities_users SET
	community_id = FLOOR(1 + RAND() * 20); 
	
DESC messages;

ALTER TABLE messages ADD COLUMN read_at DATETIME;
ALTER TABLE messages ADD COLUMN edited_at DATETIME;

desc profiles;

ALTER TABLE profiles ADD COLUMN status_message varchar(255) after photo_id;

desc communities;

ALTER TABLE communities ADD COLUMN media_id INT UNSIGNED AFTER name;
ALTER TABLE communities ADD COLUMN motto VARCHAR(255) AFTER media_id;
ALTER TABLE communities ADD COLUMN info TEXT AFTER motto;

CREATE TABLE post (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	media_id INT UNSIGNED,
	user_id INT UNSIGNED NOT NULL,
	head VARCHAR(255),
	body MEDIUMTEXT,
	create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM post;

