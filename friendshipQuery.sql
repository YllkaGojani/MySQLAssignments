USE friendship;

SELECT user1.first_name,user1.last_name,friend.first_name as friend_first_name,friend.last_name as friend_last_name
FROM users as user1
LEFT JOIN friendships ON user1.id = friendships.user_id
LEFT JOIN users as friend ON friendships.friend_id = friend.id; 