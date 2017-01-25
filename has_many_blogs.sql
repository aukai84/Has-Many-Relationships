\c matthewtirrell

DROP USER IF EXISTS "has_many_user";
DROP DATABASE IF EXISTS "has_many_blogs";
CREATE USER "has_many_user";
CREATE DATABASE "has_many_blogs" WITH OWNER "has_many_user";

\c has_many_blogs;

DROP TABLE IF EXISTS "usesr";
CREATE TABLE "users"
(
  id serial PRIMARY KEY NOT NULL,
  username varchar(90) NOT NULL,
  first_name varchar(90),
  last_name varchar(90),
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS "posts";
CREATE TABLE "posts"
(
  id serial PRIMARY KEY NOT NULL,
  title varchar(180),
  url varchar(510),
  content text,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  user_id serial NOT NULL REFERENCES users(id)
);

DROP TABLE IF EXISTS "comments";
CREATE TABLE "comments"
(
  id serial PRIMARY KEY NOT NULL,
  body varchar(510),
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  user_id serial NOT NULL REFERENCES users(id),
  post_id serial NOT NULL REFERENCES posts(id)
);

\i scripts/blog_data.sql;
