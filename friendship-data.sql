CREATE DATABASE friendship;

USE friendship;

CREATE TABLE users
( 
id INT NOT NULL auto_increment,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO users(first_name,last_name,created_at,updated_at)
VALUES ('Chris','Baker','2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO users(first_name,last_name,created_at,updated_at)
VALUES('Diana','Smith','2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO users(first_name,last_name,created_at,updated_at)
VALUES('James','Johnson','2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO users(first_name,last_name,created_at,updated_at)
VALUES('Jessica','Davidson','2010-02-01 00:00:01','2010-02-01 00:00:01');

CREATE TABLE friendships
(
id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
friend_id INT NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (friend_id) REFERENCES users(id)
);

INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(1,4,'2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(1,3,'2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(1,2,'2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(2,1,'2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(3,1,'2010-02-01 00:00:01','2010-02-01 00:00:01');
INSERT INTO friendships(user_id,friend_id,created_at,updated_at)
VALUES(4,1,'2010-02-01 00:00:01','2010-02-01 00:00:01');