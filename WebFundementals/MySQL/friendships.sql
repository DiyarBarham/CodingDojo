USE friendships;
/********************
**********0**********
********************/
/*SELECT users.first_name, users.last_name, 
users2.first_name AS friend_first_name, users2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON friendships.friend_id = users2.id;*/
/********************
**********1**********
********************/
/*SELECT users.first_name, users.last_name, 
users2.first_name AS friend_first_name, users2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON friendships.friend_id = users2.id
WHERE users2.first_name='Kermit';*/
/********************
**********2**********
********************/
/*SELECT count(friendships.id)
FROM friendships;*/
/********************
**********3**********
********************/
/*SELECT count(users.id)
FROM users
JOIN friendships ON users.id = friendships.user_id
GROUP BY users.id;*/
/********************
**********4**********
********************/
/*INSERT INTO users (first_name, last_name, created_at) 
VALUES ('mohammad', 'ahmad', now());
INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 2, now());
INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 4, now());
INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 5, now());
/********************
**********5**********
********************/
/*SELECT users.first_name, users.last_name, 
users2.first_name AS friends_first_name, users2.last_name AS friends_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS users2 ON friendships.friend_id = users2.id
WHERE users.first_name ='Eli'
ORDER BY users2.first_name DESC;*/
/********************
**********6**********
********************/
/*DELETE FROM friendships
WHERE friendships.user_id= 2 AND friendships.friend_id = 5;*/
/********************
**********7**********
********************/
/*SELECT users.first_name, users.last_name, 
users2.first_name AS friend_first_name, users2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON friendships.friend_id = users2.id;*/