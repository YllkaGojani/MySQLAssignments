-- Use a specific database
USE twitter;

-- Select all from users table
SELECT * FROM users;

-- Select first and last name from users table
SELECT first_name,last_name FROM users;
SELECT first_name as Name,last_name as Surname FROM users;

-- Select all from users table where id is 1 or 2 and order by last birthday
SELECT * FROM users
WHERE id = 1 OR id = 2
ORDER BY birthday DESC;

-- Select all from tweets table
SELECT * FROM tweets;

-- Insert values in tweets table
INSERT INTO tweets(tweet,user_id,created_at,updated_at)
VALUES('Hello there.',3,'2014-02-01 00:00:01','2014-02-01 00:00:01');

-- Update users table.Set first name to Kobe where id is 1
UPDATE `twitter`.`users` SET `first_name`='Kobe' WHERE `id`='1';

-- Allow to make updates without warnings.
SET SQL_SAFE_UPDATES = 0;

-- Delete row on tweets table where id is 13.
DELETE FROM `tweets` WHERE `id`='13';