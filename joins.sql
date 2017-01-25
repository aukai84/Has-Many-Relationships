-- 1
SELECT * FROM users;
-- 2
SELECT * FROM posts WHERE users_id = 100;
-- 3
SELECT posts.*, first_name, last_name
  FROM users
  INNER JOIN posts
  ON  posts.users_id = users.id
  WHERE users_id = 200;
-- 4
SELECT posts.*, users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';
-- 5
SELECT username FROM users WHERE created_at > '01/01/2015';
-- 6
