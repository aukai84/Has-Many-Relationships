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
SELECT posts.title, posts.content, users.username
  FROM users
  INNER JOIN posts
  ON posts.users_id = users.id
  WHERE users.created_at < '01/01/2015';
-- 7
SELECT comments.*, posts.title AS post_title
  FROM posts
  INNER JOIN comments
  ON comments.posts_id = posts.id;
-- 8
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON comments.posts_id = posts.id
  WHERE posts.created_at < '01/01/2015';
-- 9
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON comments.posts_id = posts.id
  WHERE posts.created_at > '01/01/2015';
-- 10
SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
  FROM posts
  INNER JOIN comments
  ON comments.posts_id = posts.id
  WHERE comments.body LIKE '%USB%';